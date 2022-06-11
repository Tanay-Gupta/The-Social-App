import 'package:flutter/material.dart';

class ProfileBio extends StatelessWidget {
  const ProfileBio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              "I'd rather regret the things I've done than regret the things I haven't done - Lucille Ball",
              style: TextStyle(
                  //fontFamily: "proxia nova",
                  //fontWeight: FontWeight.bold,
                  fontSize: 14)),
          SizedBox(height: 5),
          Text("www.swag.co.in",
              style: TextStyle(
                  color: Colors.green,
                  //fontFamily: "proxia nova",
                  //fontWeight: FontWeight.bold,
                  fontSize: 13)),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
