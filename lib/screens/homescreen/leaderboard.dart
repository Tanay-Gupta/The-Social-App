import 'package:flutter/material.dart';
import 'package:swag_app/constants.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Leaderboard'),
      ),
      body: Column(
        children: [
          leads(
              image: "assets/images/1.png",
              name: "Reema Verma",
              username: "@tanmay",
              f1: "2k",
              f2: "53",
              rank: "1"),
          leads(
              image: "assets/images/2.png",
              name: "Tanmay",
              username: "@reema_verma",
              f1: "1k",
              f2: "65",
              rank: "2"),
        ],
      ),
    );
  }

  Widget leads({image, name, username, f1, f2, rank}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(1, 5, 1, 5),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color(0xff151515),
        ),
        height: 150,
        //width: width,
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.cover)),
                  height: 120,
                  width: 100,
                ),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 15,
                            //fontWeight: FontWeight.bold,
                            color: Colors.white),
                        // textAlign: TextAlign.start,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 4, 0, 6),
                        child: Text(
                          username,
                          style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.bold,
                              color: Color(0xff646464)),
                          //textAlign: TextAlign.start,
                        ),
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                f1,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "followers",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          VerticalDivider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                          Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                f2,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "following",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 55,
                  width: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    border: Border.all(color: kPrimaryColor, width: 1),
                  ),
                  child: Text(
                    rank,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
