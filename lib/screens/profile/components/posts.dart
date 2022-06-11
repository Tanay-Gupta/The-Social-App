import 'package:flutter/material.dart';

class ProfilePosts extends StatelessWidget {
  const ProfilePosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: size.width * 0.49,
                child: feed(image: "assets/images/1.png")),
            Container(
                width: size.width * 0.49,
                child: feed(image: "assets/images/2.png")),
          ],
        ),
        const SizedBox(height: 3),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
                width: size.width * 0.49,
                child: feed(image: "assets/images/3.png")),
            Container(
                width: size.width * 0.49,
                child: feed(image: "assets/images/4.png")),
          ],
        ),
        const SizedBox(height: 5),
      ],
    );
  }

  Widget feed({image}) {
    return Container(
      //width: size.width * 0.49,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
