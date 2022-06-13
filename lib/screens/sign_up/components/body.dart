import 'package:flutter/material.dart';
import 'package:swag_app/screens/otp/otp_screen.dart';
import 'package:swag_app/screens/sign_up/components/mobileno_form.dart';

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
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenSize.height * 0.015),
                const Text(
                  "SIGN UP",
                  style: headingStyle,
                ),
                SizedBox(height: screenSize.height * 0.01),
                const Text(
                  "Enter your mobile number",
                  style: TextStyle(fontWeight: FontWeight.w100),
                ),
                SizedBox(
                  height: screenSize.height * .12,
                ),
                MobileNumberForm(),
                // TextButton(
                //     onPressed: () {
                //       Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //           builder: (context) => OtpScreen(
                //             number: null,
                //             value: 0,
                //           ),
                //         ),
                //       );
                //     },
                //     child: Text("temperory bypass")),
                SizedBox(
                  height: screenSize.height * .47, //.47 tha
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      " Already have an account?",
                      style: TextStyle(color: kPrimaryColor, fontSize: 15),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/signin");
                        },
                        child: Text(
                          "LOG IN",
                          style: headingStyle.copyWith(fontSize: 16),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
