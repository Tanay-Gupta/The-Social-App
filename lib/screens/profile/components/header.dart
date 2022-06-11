import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/4.png"), fit: BoxFit.cover),
          ),
        ),
        Container(
          transform: Matrix4.translationValues(0, -40, 0),
          padding: EdgeInsets.all(15),
          child: Row(
            children: [
              Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Color(0xff151515)),
                  borderRadius: BorderRadius.circular(55),
                  image: DecorationImage(
                      image: AssetImage("assets/images/2.png"),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Miss Muskan",
                      style: TextStyle(
                          //fontFamily: "proxia nova",
                          //fontWeight: FontWeight.bold,
                          fontSize: 15)),
                  Text("@miss_muskan",
                      style: TextStyle(
                          color: Colors.grey,
                          //fontFamily: "proxia nova",
                          //fontWeight: FontWeight.bold,
                          fontSize: 12)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
