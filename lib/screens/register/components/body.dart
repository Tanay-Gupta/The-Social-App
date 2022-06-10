import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:swag_app/screens/register/components/register_form.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  final String number;
  const Body({Key? key, required this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String num = number == null ? "12345678" : number;
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: screenSize.height * 0.015),
                Text(
                  "SETUP YOUR PROFILE",
                  style: headingStyle.copyWith(color: Colors.white),
                ),
                SizedBox(height: screenSize.height * 0.01),
                Row(
                  children: const [
                    Text(
                      "Enter your ",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    Text(
                      "details",
                      style: TextStyle(color: kPrimaryColor, fontSize: 16),
                    )
                  ],
                ),
                const SizedBox(height: 30),
                Image.asset(
                  "assets/icons/register_page.png",
                  width: 88,
                  height: 88,
                ),
                const SizedBox(height: 40),
                RegisterForm(
                  number: num,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
