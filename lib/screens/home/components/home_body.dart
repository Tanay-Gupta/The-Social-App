import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:swag_app/screens/home/components/stories.dart';

import '../../../constants.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: SafeArea(
          child: NestedScrollView(
              headerSliverBuilder: (context, value) {
                return [
                  SliverToBoxAdapter(
                      child: Column(children: [
                    Container(
                      //  color: Colors.yellow,
                      height: 60,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: SvgPicture.asset(
                              "assets/icons/logo.svg",
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "SWAG",
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.w800),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: SizedBox(
                                height: 25,
                                width: 25,
                                child:
                                    SvgPicture.asset("assets/icons/live.svg")),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: SizedBox(
                                height: 30,
                                width: 30,
                                child:
                                    Image.asset("assets/icons/Icon_play.png")),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "/notifications");
                            },
                            child: SizedBox(
                              height: 25,
                              width: 25,
                              child: SvgPicture.asset(
                                "assets/icons/fi_heart.svg",
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: SvgPicture.asset(
                              "assets/icons/u_comment.svg",
                              height: 25,
                              width: 25,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, "/settings");
                              },
                              child: SvgPicture.asset(
                                "assets/icons/settings.svg",
                                height: 25,
                                width: 25,
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      color: Colors.grey,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Stories(),
                    const SizedBox(height: 8),
                  ])),
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        TabBar(
                          isScrollable: true,
                          indicatorColor: kPrimaryColor,
                          tabs: [
                            Tab(text: "FEED"),
                            Tab(text: "NEWS"),
                            Tab(text: "TRENDING"),
                            Tab(text: "NEARBY"),
                            Tab(text: "DISCOVER"),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  )
                ];
              },
              body: TabBarView(children: [
                ListView(
                  primary: true,
                  // shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    feed(image: 'assets/images/2.png'),
                    feed(image: 'assets/images/3.png'),
                    feed(image: 'assets/images/1.png'),
                    feed(image: 'assets/images/4.png'),
                    feed(image: 'assets/images/3.png'),
                    feed(image: 'assets/images/1.png'),
                  ],
                ),
                Text("h2"),
                Text("h2"),
                Text("h2"),
                Text("h2"),
              ]))),
    );
  }

  Widget feed({image}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            width: double.infinity,
            //margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 6,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(backgroundImage: AssetImage('assets/images/1.png')),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Roma",
                      style: TextStyle(
                          fontFamily: "proxia nova",
                          //fontWeight: FontWeight.bold,
                          fontSize: 15)),
                  Text("2hr ago",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "proxia nova",
                          //fontWeight: FontWeight.bold,
                          fontSize: 12)),
                ],
              ),
              Row(
                //  mainAxisAlignment: MainAxisAlignment.,
                children: [
                  //Image.asset("assets/icons/v2.png"),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.send_sharp,
                        color: Colors.white,
                      )),
                  Text("100K",
                      style: TextStyle(
                        //color: Colors.grey,
                        fontFamily: "proxia nova",
                        //fontWeight: FontWeight.bold,
                        //fontSize: 10
                      )),
                  //Image.asset("assets/icons/v1.png"),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.comment_sharp,
                        color: Colors.white,
                      )),
                  Text("100K",
                      style: TextStyle(
                        //color: Colors.grey,
                        fontFamily: "proxia nova",
                        //fontWeight: FontWeight.bold,
                        //fontSize: 10
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: kPrimaryColor,
                      )),
                  Text("100K",
                      style: TextStyle(
                        //color: Colors.grey,
                        fontFamily: "proxia nova",
                        //fontWeight: FontWeight.bold,
                        //fontSize: 10
                      )),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "I'd rather regret the things I've done than regret the",
            style: TextStyle(fontFamily: "poppins"),
          ),
          Text(
            "#moreviews  #newpic #love more....",
            style: TextStyle(color: Colors.green, fontFamily: "poppins"),
          ),
          Text(
            "VIEW ALL 345 COMMENTS",
            style: TextStyle(color: Colors.grey, fontFamily: "poppins"),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
