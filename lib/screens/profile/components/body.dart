import 'package:flutter/material.dart';
import 'package:swag_app/screens/forgot_password/componets/body.dart';
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
    return DefaultTabController(
      length: 2,
      child: SafeArea(
          child: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  const ProfileHeader(),
                  const ProfileStats(),
                  const ProfileBio(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                    child: Material(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.black,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/editProfile");
                        },
                        borderRadius: BorderRadius.circular(6),
                        child: Container(
                          height: 39,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border:
                                  Border.all(color: const Color(0xff3F3F3F))),
                          child: const Center(
                            child: Text("EDIT PROFILE"),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  Highlights(),

                  // DefaultTabController(length: 2, child: ProfilePosts()),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: const TabBar(indicatorColor: Colors.transparent, tabs: [
                Tab(
                  text: "POST",
                ),
                Tab(
                  text: "VIDEOS",
                )
              ]),
            )
          ];
        },
        body: const TabBarView(
          children: <Widget>[ProfilePosts(), Center(child: Text("Videos"))],
        ),
      )),
    );
  }
}
