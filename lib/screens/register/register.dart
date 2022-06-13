import 'package:flutter/material.dart';

import 'package:swag_app/screens/register/components/body.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = "/register";
  final String? number;

  const RegisterScreen({
    Key? key,
    this.number,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String s = number!;

    return Scaffold(
      // backgroundColor: Colors.yellow,
      body: Body(
        number: s,
      ),
    );
  }
}
