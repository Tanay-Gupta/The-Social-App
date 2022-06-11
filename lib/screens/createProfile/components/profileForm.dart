import 'package:flutter/material.dart';
import 'package:swag_app/screens/components/default_button.dart';
import 'package:swag_app/screens/homescreen/nav.dart';

import '../../../constants.dart';

class ProfileForm extends StatefulWidget {
  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  final _formKey = GlobalKey<FormState>();
  String? name;
  String? username;
  String? password;
  bool? remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const SizedBox(height: (30)),
          Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: 58,
              decoration: BoxDecoration(
                  color: const Color(0xff151515),
                  borderRadius: BorderRadius.circular(8)),
              child: Center(child: buildNameFormField())),
          const SizedBox(height: (30)),
          Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: 58,
              decoration: BoxDecoration(
                  color: const Color(0xff151515),
                  borderRadius: BorderRadius.circular(8)),
              child: Center(child: buildUserNameFormField())),
          const SizedBox(height: (30)),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            height: 58,
            decoration: BoxDecoration(
                color: const Color(0xff151515),
                borderRadius: BorderRadius.circular(8)),
            child: Center(child: buildPasswordFormField()),
          ),
          const SizedBox(height: (30)),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            height: 58,
            decoration: BoxDecoration(
                color: const Color(0xff151515),
                borderRadius: BorderRadius.circular(8)),
            child: Center(child: buildPasswordFormField()),
          ),
          const SizedBox(height: (30)),
          DefaultButton(
            press: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Nav()),
                  (route) => false);
              // if (_formKey.currentState!.validate()) {
              //   _formKey.currentState!.save();
              //   // if all are valid then go to success screen
              //   // KeyboardUtil.hideKeyboard(context);
              //   // Navigator.pushNamed(context, LoginSuccessScreen.routeName);
              // }
            },
            text: "DONE",
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        // labelText: "Password",
        hintText: "Enter your password",
        hintStyle: formfieldTextStyle,
        border: InputBorder.none,
        fillColor: Colors.amber,

        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        //suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Lock.svg"),
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => name = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        hintStyle: formfieldTextStyle,

        hintText: "Enter your name",
        border: InputBorder.none,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildUserNameFormField() {
    return TextFormField(
      keyboardType: TextInputType.name,
      onSaved: (newValue) => name = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        hintStyle: formfieldTextStyle,

        hintText: "Enter your username",
        border: InputBorder.none,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
