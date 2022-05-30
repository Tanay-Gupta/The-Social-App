import 'package:flutter/material.dart';
import 'package:swag_app/screens/sign_in/componets/sign_form.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenSize.height * 0.015),
              const Text(
                "LOG IN",
                style: headingStyle,
              ),
              SizedBox(height: screenSize.height * 0.01),
              const Text(
                "Enter your login details",
                style: TextStyle(fontWeight: FontWeight.w100),
              ),
              SizedBox(height: screenSize.height * 0.12),
              SignForm(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forget Password?",
                        style: TextStyle(
                            color: kPrimaryColor, fontWeight: FontWeight.w100),
                      ))
                ],
              ),
              SizedBox(
                height: screenSize.height * .28,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account",
                    style: TextStyle(color: kPrimaryColor, fontSize: 15),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "SIGN UP",
                        style: headingStyle.copyWith(fontSize: 16),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
