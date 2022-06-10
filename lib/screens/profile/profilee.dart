import 'package:flutter/material.dart';
import 'package:swag_app/constants.dart';
import 'package:swag_app/screens/components/default_button.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: DefaultTabController(
          length: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/4.png"),
                      fit: BoxFit.cover),
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
                    // CircleAvatar(foregroundColor: Colors.grey,
                    //   radius: 45,
                    //   backgroundImage: AssetImage("assets/images/2.png"),
                    // ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Miss Muskan",
                            style: TextStyle(
                                fontFamily: "proxia nova",
                                //fontWeight: FontWeight.bold,
                                fontSize: 15)),
                        Text("@miss_muskan",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "proxia nova",
                                //fontWeight: FontWeight.bold,
                                fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                transform: Matrix4.translationValues(-32, -25, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("67k",
                            style: TextStyle(
                                fontFamily: "proxia nova",
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                        Text("followers",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "proxia nova",
                                //fontWeight: FontWeight.bold,
                                fontSize: 12)),
                      ],
                    ),
                    Column(
                      children: [
                        Text("112",
                            style: TextStyle(
                                fontFamily: "proxia nova",
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                        Text("posts",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "proxia nova",
                                //fontWeight: FontWeight.bold,
                                fontSize: 12)),
                      ],
                    ),
                    Column(
                      children: [
                        Text("52",
                            style: TextStyle(
                                fontFamily: "proxia nova",
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                        Text("following",
                            style: TextStyle(
                                color: Colors.grey,
                                fontFamily: "proxia nova",
                                //fontWeight: FontWeight.bold,
                                fontSize: 12)),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "I’d rather regret the things I’ve done than regret the things I haven’t done – Lucille Ball",
                        style: TextStyle(
                            fontFamily: "proxia nova",
                            //fontWeight: FontWeight.bold,
                            fontSize: 14)),
                    Text("www.swag.co.in",
                        style: TextStyle(
                            color: Colors.green,
                            fontFamily: "proxia nova",
                            //fontWeight: FontWeight.bold,
                            fontSize: 12)),
                  ],
                ),
              ),
              // DefaultButton(
              //   text: "FOLLOW",
              //   press: () {},
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      primary: Colors.white,
                      backgroundColor: kPrimaryColor,
                    ),
                    onPressed: () {},
                    child: Text(
                      "EDIT PROFILE",
                      style: TextStyle(fontFamily: ""),
                    ),
                  )),

              SizedBox(
                height: 6,
              ),
              Container(
                padding: EdgeInsets.all(6),
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    item(image: 'assets/images/2.png', name: "goa trip"),
                    item(image: 'assets/images/3.png', name: "friends"),
                    item(image: 'assets/images/1.png', name: "new year"),
                    item(image: 'assets/images/4.png', name: "happy"),
                    item(image: 'assets/images/3.png', name: "holi"),
                    item(image: 'assets/images/1.png', name: "clubs"),
                  ],
                ),
              ),
              TabBar(
                //labelPadding: EdgeInsets.all(10),
                isScrollable: true,
                indicatorColor: kPrimaryColor,
                tabs: [
                  Tab(text: "PHOTOS"),
                  Tab(text: "VIDEOS"),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      height: 200,
                      color: Colors.green,
                    ),
                    Container(
                      height: 200,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              // Expanded(
              //   child: GridView.builder(
              //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 2,
              //     ),
              //     itemCount: 2,
              //     itemBuilder: (BuildContext context, int index) {
              //       return Container(
              //         color: Colors.red,
              //       );
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget item({image, name}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            height: 80,
            width: 70,
            //margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
        ),
        Text(name,
            style: TextStyle(
                fontFamily: "proxia nova",
                //fontWeight: FontWeight.bold,
                fontSize: 12)),
      ],
    );
  }

  Widget feed({image}) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(0, 2, 0, 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              //margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
          ],
        ));
  }
}
