import 'package:flutter/material.dart';
import 'package:swag_app/constants.dart';
import 'package:swag_app/screens/profile/follow/followersList.dart';
import 'package:swag_app/screens/profile/follow/followingList.dart';

class ProfileFollowing extends StatefulWidget {
  const ProfileFollowing({Key? key}) : super(key: key);

  @override
  State<ProfileFollowing> createState() => _ProfileFollowingState();
}

class _ProfileFollowingState extends State<ProfileFollowing> {
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
                          "FOLLOWING",
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
                              "100",
                              style: TextStyle(color: kPrimaryColor),
                            ),
                            const Text(
                              " PEOPLE FOLOWING YOU",
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
            FollowingList(),
          ],
        ),
      ),
    );
  }
}