import 'package:flutter/material.dart';
import 'package:swag_app/screens/forgot_password/componets/body.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);
  static String routeName = "/forget_password";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
