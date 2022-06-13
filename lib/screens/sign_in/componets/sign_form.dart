import 'package:flutter/material.dart';
import 'package:swag_app/backend/services/auth/authentication.dart';
import 'package:swag_app/screens/components/default_button.dart';
import 'package:swag_app/screens/homescreen/nav.dart';

import '../../../constants.dart';

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  bool? remember = false;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
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
              child: Center(child: buildEmailFormField())),
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
            longPress: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Nav()),
                  (route) => false);
            },
            press: () async {
              // print(email);
              // print(password);
              _formKey.currentState!.save();

              if (email.isEmpty || password.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Empty field :("),
                  duration: Duration(seconds: 2),
                ));
              } else {
                // if all are valid then go to success screen

                // Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                if (email[0] == '+' && "0123456789".contains(email[1])) {
                  String response =
                      await AuthenticationAPI().loginWithPhone(email, password);

                  if (response == 'true') {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Login successfull"),
                      duration: Duration(seconds: 2),
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(response),
                      duration: const Duration(seconds: 2),
                    ));
                  }
                } else {
                  String response = await AuthenticationAPI()
                      .loginWithUsername(email, password);
                  if (response == 'true') {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Login successfull"),
                      duration: Duration(seconds: 2),
                    ));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(response),
                      duration: const Duration(seconds: 2),
                    ));
                  }
                }
              }
            },
            text: "LOG IN",
          ),
        ],
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      style: const TextStyle(color: kPrimaryColor),
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
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

  TextFormField buildEmailFormField() {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kUsernameNullError);
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

        hintText: "Enter your username or mobile no (with code)",
        border: InputBorder.none,
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
