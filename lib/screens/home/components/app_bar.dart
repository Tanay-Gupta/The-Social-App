import 'package:flutter/material.dart';

import '../../../constants.dart';

class Appbar extends StatelessWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.black,
      title: Text("SWAG"),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.play_circle,
              color: kPrimaryColor,
            )),
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/notifications");
            },
            icon: Icon(Icons.favorite_border)),
        IconButton(
            onPressed: () {}, icon: Icon(Icons.chat_bubble_outline_rounded)),
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/settings");
            },
            icon: Icon(
              Icons.settings_sharp,
              color: Colors.grey,
            )),
      ],
    );
  }
}
