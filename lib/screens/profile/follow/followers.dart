import 'package:flutter/material.dart';
import 'package:swag_app/constants.dart';
import 'package:swag_app/screens/profile/follow/followersList.dart';

class ProfileFollowers extends StatefulWidget {
  const ProfileFollowers({Key? key}) : super(key: key);

  @override
  State<ProfileFollowers> createState() => _ProfileFollowersState();
}

class _ProfileFollowersState extends State<ProfileFollowers> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenSize.height * 0.015),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.arrow_back,
                      size: 25,
                      color: Colors.white,
                    ),
                    SizedBox(width: screenSize.width * 0.05),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "FOLLOWERS",
                          style: TextStyle(
                            fontSize: 22,
                            //fontFamily: "",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.005),
                        Row(
                          children: [
                            const Text(
                              "YOU HAVE",
                              style: TextStyle(),
                            ),
                            const Text(
                              " 4",
                              style: TextStyle(color: kPrimaryColor),
                            ),
                            const Text(
                              " FOLLOWERS",
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(
                  Icons.search,
                  size: 25,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            FollowersList(),
          ],
        ),
      ),
    );
  }
}