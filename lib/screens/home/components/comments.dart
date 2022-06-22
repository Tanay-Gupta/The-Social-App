import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swag_app/constants.dart';

class CommentsPage extends StatelessWidget {
  const CommentsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('comments'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            comments(),
            replies(),
            comments(),
            comments(),
          ],
        ),
      ),
    );
  }

  Widget comments() {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/1.png'),
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text("vivek gupta",
                          style: TextStyle(
                              fontSize: 12,
                              //fontFamily: "Anmol",
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 12,
                      ),
                      Text("best pic in the world glad to see this ",
                          style: TextStyle(
                            fontSize: 12,
                            //fontFamily: "Anmol",
                            //fontWeight: FontWeight.bold
                          )),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text("30 likes",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            //fontFamily: "Anmol",
                            //fontWeight: FontWeight.bold
                          )),
                      SizedBox(
                        width: 15,
                      ),
                      Text(" Reply",
                          style: TextStyle(
                            fontSize: 10, color: Colors.grey,
                            //fontFamily: "Anmol",
                            //fontWeight: FontWeight.bold
                          )),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SvgPicture.asset(
            "assets/icons/comm.svg",
            height: 20,
            color: kPrimaryColor,
          ),
        ],
      ),
    );
  }

  Widget replies() {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                width: 40,
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/2.png'),
              ),
              SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text("vivek gupta",
                          style: TextStyle(
                              fontSize: 12,
                              //fontFamily: "Anmol",
                              fontWeight: FontWeight.bold)),
                      SizedBox(
                        width: 12,
                      ),
                      Text("lol",
                          style: TextStyle(
                            fontSize: 12,
                            //fontFamily: "Anmol",
                            //fontWeight: FontWeight.bold
                          )),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text("30 likes",
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.grey,
                            //fontFamily: "Anmol",
                            //fontWeight: FontWeight.bold
                          )),
                      SizedBox(
                        width: 15,
                      ),
                      Text(" Reply",
                          style: TextStyle(
                            fontSize: 10, color: Colors.grey,
                            //fontFamily: "Anmol",
                            //fontWeight: FontWeight.bold
                          )),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SvgPicture.asset(
            "assets/icons/comm.svg",
            height: 20,
            color: kPrimaryColor,
          ),
        ],
      ),
    );
  }
}
