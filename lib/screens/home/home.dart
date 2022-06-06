import 'package:flutter/material.dart';
import 'package:swag_app/constants.dart';
import 'package:swag_app/screens/home/components/stories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Text("SWAG"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.play_circle,
                color: kPrimaryColor,
              )),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/notifications");
              },
              icon: Icon(Icons.favorite_border)),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.chat_bubble_outline_rounded)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, "/settings");
              },
              icon: Icon(
                Icons.settings_sharp,
                color: Colors.grey,
              )),
        ],
      ),
      body: DefaultTabController(
        length: 5,
        child: NestedScrollView(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                color: Colors.grey,
              ),
              Stories(),
              Stories(),
              Stories(),
              Stories(),
              SizedBox(height: 4),
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
                height: 8,
              ),
              TabBarView(
                children: [
                  // Container(
                  //   color: Colors.red,
                  // ),
                  // ListView(
                  //   scrollDirection: Axis.vertical,
                  //   children: <Widget>[
                  //     feed(image: 'assets/images/2.png'),
                  //     feed(image: 'assets/images/3.png'),
                  //     feed(image: 'assets/images/1.png'),
                  //     feed(image: 'assets/images/4.png'),
                  //     feed(image: 'assets/images/3.png'),
                  //     feed(image: 'assets/images/1.png'),
                  //   ],
                  // ),
                  Container(
                    color: Colors.green,
                  ),
                  Container(
                    color: Colors.green,
                  ),
                  Container(
                    color: Colors.blue,
                  ),
                  Container(
                    color: Colors.yellow,
                  ),
                  Container(
                    color: Colors.orange,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
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
                  Text("Roma Verma",
                      style: TextStyle(
                          fontFamily: "proxia nova",
                          //fontWeight: FontWeight.bold,
                          fontSize: 15)),
                  Text("2hrs ago",
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: "proxia nova",
                          //fontWeight: FontWeight.bold,
                          fontSize: 12)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
