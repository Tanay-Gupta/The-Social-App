import 'package:flutter/material.dart';
import 'package:swag_app/screens/createProfile/components/profileForm.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 25, 20, 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenSize.height * 0.015),
              const Text(
                "SETUP YOUR PROFILE",
                style: headingStyle,
              ),
              SizedBox(height: screenSize.height * 0.01),
              const Text(
                "Enter your details",
                //style: TextStyle(
                //fontWeight: FontWeight.w100),
              ),
              SizedBox(height: screenSize.height * 0.08),
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/images/pfp.png"),
              ),
              SizedBox(
                height: 22,
              ),
              ProfileForm(),
            ],
          ),
        ),
      ),
    );
  }
}
