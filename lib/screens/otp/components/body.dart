import 'package:flutter/material.dart';

import 'package:swag_app/screens/components/default_button.dart';

import '../../../constants.dart';
import 'otp_form.dart';

class Body extends StatelessWidget {
  final String? number;
  final int? value;
  const Body({
    Key? key,
    this.value,
    this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 25, 20, 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenSize.height * 0.015),
              Text(
                "OTP",
                style: headingStyle.copyWith(color: Colors.white),
              ),
              SizedBox(height: screenSize.height * 0.01),
              Row(
                children: [
                  const Text(
                    "Otp sent to your number ",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    "$number",
                    style: TextStyle(color: kPrimaryColor, fontSize: 16),
                  )
                ],
              ),
              SizedBox(height: screenSize.height * 0.035),
              const OtpForm(),
              SizedBox(height: screenSize.height * 0.02),
              buildTimer(),
              SizedBox(height: screenSize.height * 0.02),
              DefaultButton(
                text: "NEXT",
                press: () {
                  if (value == 0) {
                    Navigator.pushReplacementNamed(context, '/home');
                  } else {
//reset password
                    Navigator.pushReplacementNamed(context, '/change_password');
                  }
                },
              ),
              SizedBox(height: screenSize.height * 0.1),
              // GestureDetector(
              //   onTap: () {
              //     // OTP code resend
              //   },
              //   child: Text(
              //     "Resend OTP Code",
              //     style: TextStyle(decoration: TextDecoration.underline),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
            onPressed: () {},
            child: const Text("RESEND OTP ?",
                style: TextStyle(fontSize: 14, color: Color(0xffF7DE00)))),
        TweenAnimationBuilder(
          tween: Tween(begin: 60.0, end: 0.0),
          duration: Duration(seconds: 60),
          builder: (_, dynamic value, child) => Text(
            "${value.toInt()} S",
            style: const TextStyle(fontSize: 14, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
