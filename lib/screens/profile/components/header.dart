import 'package:flutter/material.dart';
import 'package:swag_app/screens/StoryScreens/story_screen.dart';

import '../../../data.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/4.png"),
                    fit: BoxFit.fitWidth),
              ),
            ),
            Positioned(
              // bottom: 200,
              right: 10,
              child: IconButton(
                icon: const Icon(
                  Icons.edit,
                  color: Colors.white,
                ),
                onPressed: () {
                  print("object");
                },
              ),
              top: 5,
            )
          ],
        ),
        Container(
          transform: Matrix4.translationValues(0, -40, 0),
          padding: const EdgeInsets.fromLTRB(10, 15, 0, 10),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => StoryScreen(stories: stories)),
                  );
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(width: 4, color: Color(0xff151515)),
                    borderRadius: BorderRadius.circular(55),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/2.png"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 3,
                  ),
                  Text("Miss Muskan",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                  SizedBox(
                    height: 2,
                  ),
                  Text("@miss_muskan",
                      style: TextStyle(color: Colors.grey, fontSize: 11)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
