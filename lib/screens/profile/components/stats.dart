import 'package:flutter/material.dart';

class ProfileStats extends StatelessWidget {
  const ProfileStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(-40, -28, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/followers");
            },
            child: Column(
              children: [
                Text("67k",
                    style: TextStyle(
                        //fontFamily: "proxia nova",
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
                Text("followers",
                    style: TextStyle(
                        color: Colors.grey,
                        //fontFamily: "proxia nova",
                        //fontWeight: FontWeight.bold,
                        fontSize: 12)),
              ],
            ),
          ),
          Column(
            children: [
              Text("112",
                  style: TextStyle(
                      //fontFamily: "proxia nova",
                      fontWeight: FontWeight.bold,
                      fontSize: 15)),
              Text("posts",
                  style: TextStyle(
                      color: Colors.grey,
                      //fontFamily: "proxia nova",
                      //fontWeight: FontWeight.bold,
                      fontSize: 12)),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/following");
            },
            child: Column(
              children: [
                Text("52",
                    style: TextStyle(
                        //fontFamily: "proxia nova",
                        fontWeight: FontWeight.bold,
                        fontSize: 15)),
                Text("following",
                    style: TextStyle(
                        color: Colors.grey,
                        //fontFamily: "proxia nova",
                        //fontWeight: FontWeight.bold,
                        fontSize: 12)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
