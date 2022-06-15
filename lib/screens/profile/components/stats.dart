import 'package:flutter/material.dart';

class ProfileStats extends StatelessWidget {
  const ProfileStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      transform: Matrix4.translationValues(-50, -28, 0),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            width: 82,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/followers");
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text("67k",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                SizedBox(
                  height: 5,
                ),
                Text("followers",
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
              ],
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text("112",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
              Text("post", style: TextStyle(color: Colors.grey, fontSize: 15)),
            ],
          ),
          const SizedBox(
            width: 50,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/following");
            },
            child: Column(
              children: const [
                Text("52",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                Text("following",
                    style: TextStyle(color: Colors.grey, fontSize: 15)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
