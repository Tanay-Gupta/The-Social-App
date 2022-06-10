import 'package:flutter/material.dart';
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
              OtpForm(
                number: number,
              ),
              SizedBox(height: screenSize.height * 0.1),
            ],
          ),
        ),
      ),
    );
  }
}
