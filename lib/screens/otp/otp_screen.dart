import 'package:flutter/material.dart';
import 'components/body.dart';

class OtpScreen extends StatelessWidget {
  final String? number;
  static String routeName = "/otp";

  const OtpScreen({Key? key, this.number}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   title: Text("OTP Verification"),
      // ),
      body: Body(
        number: number,
      ),
    );
  }
}
