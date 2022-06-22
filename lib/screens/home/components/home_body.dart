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
                    SizedBox(
                      //  color: Colors.yellow,
                      height: 45,
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
                      children: const [
                        TabBar(
                          isScrollable: true,
                          indicatorColor: kPrimaryColor,
                          tabs: [
                            Tab(text: "FEED"),
                            Tab(text: "TRENDING"),
                            Tab(text: "NEWS"),
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
                ListView(
                  primary: true,
                  // shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    trending(image: 'assets/images/4.png'),
                    trending(image: 'assets/images/3.png'),
                    trending(image: 'assets/images/1.png'),
                    trending(image: 'assets/images/2.png'),
                    trending(image: 'assets/images/3.png'),
                    trending(image: 'assets/images/1.png'),
                  ],
                ),
                const Text("same as trending"),
                const Text("same as trending"),
                const Text("same as trending"),
              ]))),
    );
  }

//<-------------------------------------------------POST FEED---------------------------------------->
  Widget feed({image}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 400,
            width: double.infinity,
            //margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 6,
          ),
          Row(
            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                width: 6,
              ),
              const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/1.png')),
              const SizedBox(
                width: 6,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Roma Verma",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      )),
                  Text("2hr ago",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "proxia nova",
                          //fontWeight: FontWeight.bold,
                          fontSize: 12)),
                ],
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  "assets/icons/homeShare.svg",
                  height: 20,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              const Text("100K",
                  style: TextStyle(
                      //color: Colors.grey,
                      // fontFamily: "proxia nova",
                      fontSize: 13)),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  "assets/icons/homeComments.svg",
                  height: 20,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              const Text("100K",
                  style: TextStyle(
                      //color: Colors.grey,
                      fontFamily: "proxia nova",
                      fontSize: 13
                      //fontWeight: FontWeight.bold,
                      //fontSize: 10
                      )),
              const SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  "assets/icons/fi_heart.svg",
                  height: 20,
                ),
              ),
              const SizedBox(
                width: 6,
              ),
              const Text("100K",
                  style: TextStyle(
                    fontSize: 13,
                    //color: Colors.grey,
                    fontFamily: "proxia nova",
                    //fontWeight: FontWeight.bold,
                    //fontSize: 10
                  )),
              const SizedBox(
                height: 6,
              ),
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(6, 2, 20, 0),
            child: Text(
              "I'd rather regret the things I've done than regret the",
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(6, 0, 20, 0),
            child: Text(
              "#moreviews  #newpic #love more....",
              style: TextStyle(
                color: Colors.green,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/comments");
            },
            child: const Padding(
              padding: EdgeInsets.fromLTRB(6, 2, 20, 0),
              child: Text(
                "VIEW ALL 345 COMMENTS",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  //<-------------------------------------------------POST FEED ENDS---------------------------------------->

  Widget trending({image}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(2, 2, 2, 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 400,
                width: double.infinity,
                //margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(image), fit: BoxFit.cover)),
              ),
              Positioned(
                  bottom: 55,
                  right: 5,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          "assets/icons/trendingHeart.svg",
                          height: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text("100K",
                          style: TextStyle(
                            fontSize: 13,
                            //color: Colors.grey,
                            fontFamily: "proxia nova",
                            //fontWeight: FontWeight.bold,
                            //fontSize: 10
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          "assets/icons/homeComments.svg",
                          height: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text("10K", style: TextStyle(fontSize: 13)),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          "assets/icons/homeShare.svg",
                          height: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text("100K",
                          style: TextStyle(
                              //color: Colors.grey,
                              // fontFamily: "proxia nova",
                              fontSize: 13)),
                    ],
                  )),
              Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black54,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 3, top: 3),
                    child: Row(
                      //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 6,
                        ),
                        const CircleAvatar(
                            backgroundImage: AssetImage('assets/images/4.png')),
                        const SizedBox(
                          width: 6,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Roma Verma",
                                style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text("2hr ago",
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
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          const SizedBox(
            height: 8,
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(6, 2, 20, 0),
            child: Text(
              "I'd rather regret the things I've done than regret the",
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(6, 0, 20, 0),
            child: Text(
              "#moreviews  #newpic #love more....",
              style: TextStyle(
                color: Colors.green,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.fromLTRB(6, 2, 20, 0),
              child: Text(
                "VIEW ALL 25 COMMENTS",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
