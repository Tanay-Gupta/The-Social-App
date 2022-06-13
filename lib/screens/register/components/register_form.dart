import 'package:flutter/material.dart';
import 'package:swag_app/backend/services/auth/authentication.dart';
import 'package:swag_app/screens/components/default_button.dart';
import 'package:swag_app/screens/components/form_error.dart';

import '../../../constants.dart';

class RegisterForm extends StatefulWidget {
  final String number;

  const RegisterForm({Key? key, required this.number}) : super(key: key);
  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  String? username;
  String? name;
  String? password;
  String? conform_password;

  bool remember = false;
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Enter Your Name",
            // style: TextStyle(
            //   color: Color(0xff555555),
            // ),
          ),
          const SizedBox(
            height: 7,
          ),
          buildNameFormField(),
          const SizedBox(height: (25)),
          const Text("Enter your Username"),
          const SizedBox(
            height: 7,
          ),
          buildEmailFormField(),
          const SizedBox(height: (25)),
          const Text("Create New Password"),
          const SizedBox(
            height: 7,
          ),
          buildPasswordFormField(),
          const SizedBox(height: (25)),
          const Text("Retype your Password"),
          const SizedBox(
            height: 7,
          ),
          buildConformPassFormField(),
          FormError(errors: errors),
          const SizedBox(height: (40)),
          DefaultButton(
            text: "Done",
            press: () async {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // if all are valid then go to success screen

                if (widget.number != null) {
                  String response = await AuthenticationAPI()
                      .register(widget.number, name!, username!, password!);

                  if (response == 'true') {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Registration successful."),
                      duration: Duration(seconds: 2),
                    ));

                    await Future.delayed(const Duration(seconds: 3), () {});
                    Navigator.pushReplacementNamed(context, "/signin");
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Server response: " + response),
                      duration: const Duration(seconds: 2),
                    ));
                  }
                }
                // print(name);
                // print(username);
                // print(password);
                // print(conform_password);
              }
            },
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }

  TextFormField buildConformPassFormField() {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      obscureText: true,
      onSaved: (newValue) => conform_password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.isNotEmpty && password == conform_password) {
          removeError(error: kMatchPassError);
        }
        conform_password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if ((password != value)) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kPrimaryColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(
            color: Color(0xff555555),
          ),
        ),
        // labelText: "Confirm Password",
        hintText: "Re-enter your password",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
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
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kPrimaryColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(
            color: Color(0xff555555),
          ),
        ),
        //labelText: "Password",
        hintText: "Enter your password",

        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      keyboardType: TextInputType.text,
      onSaved: (newValue) => username = newValue.toString().toLowerCase(),
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kUsernameNullError);
        } else if (userNameValidatorRegExp
            .hasMatch(value..toString().toLowerCase())) {
          removeError(error: kUsernameInvalidError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kUsernameNullError);
          return "";
        } else if (!userNameValidatorRegExp
            .hasMatch(value..toString().toLowerCase())) {
          addError(error: kUsernameInvalidError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kPrimaryColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(
            color: Color(0xff555555),
          ),
        ),

        // labelText: "username",
        // hintText: "Enter your username",

        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildNameFormField() {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      // keyboardType: TextInputType.text,
      onSaved: (newValue) => name = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNameNullError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNameNullError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kPrimaryColor,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          borderSide: BorderSide(
            color: Color(0xff555555),
          ),
        ),

        // labelText: "Email",
        // hintText: "Enter your email",

        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }
}
