import 'package:flutter/material.dart';
import 'package:swag_app/screens/profile/components/bio.dart';
import 'package:swag_app/screens/profile/components/header.dart';
import 'package:swag_app/screens/profile/components/highlights.dart';
import 'package:swag_app/screens/profile/components/posts.dart';
import 'package:swag_app/screens/profile/components/stats.dart';

class ProfileBody extends StatefulWidget {
  const ProfileBody({Key? key}) : super(key: key);

  @override
  State<ProfileBody> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProfileHeader(),
              ProfileStats(),
              ProfileBio(),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/editProfile");
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey)),
                  child: Text("EDIT PROFILE"),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Highlights(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "POST",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "VIDEOS",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              ProfilePosts(),
            ],
          ),
        ),
      ),
    );
  }
}
