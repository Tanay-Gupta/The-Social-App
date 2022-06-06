import 'package:flutter/material.dart';
import 'package:swag_app/screens/change_password/components/change_password_form.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenSize.height * 0.015),
                const Text(
                  "change password",
                  style: headingStyle,
                ),
                SizedBox(height: screenSize.height * 0.01),
                const Text(
                  "Enter your login detais",
                ),
                SizedBox(height: screenSize.height * 0.07),
                SignForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
