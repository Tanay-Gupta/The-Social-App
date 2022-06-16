import 'package:flutter/material.dart';

class ProfilePosts extends StatelessWidget {
  const ProfilePosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GridView.count(
      primary: true,
      padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
      crossAxisSpacing: 2,
      mainAxisSpacing: 2,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
            width: size.width * 0.49,
            child: feed(image: "assets/images/1.png")),
        Container(
            width: size.width * 0.49,
            child: feed(image: "assets/images/2.png")),
        Container(
            width: size.width * 0.49,
            child: feed(image: "assets/images/3.png")),
        Container(
            width: size.width * 0.49,
            child: feed(image: "assets/images/4.png")),
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



// Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Container(
            //         width: size.width * 0.49,
            //         child: feed(image: "assets/images/1.png")),
            //     Container(
            //         width: size.width * 0.49,
            //         child: feed(image: "assets/images/2.png")),
            //   ],
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Container(
            //         width: size.width * 0.49,
            //         child: feed(image: "assets/images/3.png")),
            //     Container(
            //         width: size.width * 0.49,
            //         child: feed(image: "assets/images/4.png")),
            //   ],
            // ),