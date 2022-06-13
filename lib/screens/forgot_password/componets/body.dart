import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swag_app/screens/forgot_password/componets/sign_form.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return (SizedBox(
      width: double.infinity,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 25, 20, 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: SvgPicture.asset(
                        "assets/icons/u_arrow-left.svg",
                        height: 30,
                        width: 30,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    const Text(
                      'forgot password',
                      style: headingStyle,
                    ),
                  ],
                ),
                SizedBox(height: screenSize.height * 0.05),
                SignForm(),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
