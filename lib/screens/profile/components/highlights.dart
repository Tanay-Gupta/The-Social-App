import 'package:flutter/material.dart';
import 'package:swag_app/screens/StoryScreens/story_screen.dart';

import '../../../data.dart';

class Highlights extends StatelessWidget {
  const Highlights({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: MediaQuery.of(context).size.width,
      height: 110,
      // color: Colors.red,
      child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Expanded(
          child: ListView(
            primary: false,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 5),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("new");
                        },
                        child: Container(
                          margin: const EdgeInsets.only(
                            bottom: 7,
                          ),
                          height: 65,
                          width: 65,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(34),
                            color: const Color(0xff413F3F),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.add,
                              size: 28,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      const Text("NEW", style: TextStyle(fontSize: 12)),
                    ]),
              ),
              item(
                  image: 'assets/images/2.png',
                  name: "goa trip",
                  context: context),
              item(
                  image: 'assets/images/3.png',
                  name: "friends",
                  context: context),
              item(
                  image: 'assets/images/1.png',
                  name: "new year",
                  context: context),
              item(
                  image: 'assets/images/4.png',
                  name: "happy",
                  context: context),
              item(
                  image: 'assets/images/3.png', name: "holi", context: context),
              item(
                  image: 'assets/images/1.png',
                  name: "clubs",
                  context: context),
            ],
          ),
        ),
      ]),
    );
  }

  Widget item({image, name, context}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(11, 5, 11, 5),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => StoryScreen(stories: stories)),
              );
            },
            child: Container(
              height: 75,
              width: 68,
              //margin: EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
          ),
        ),
        Text(name, style: const TextStyle(fontSize: 12)),
      ],
    );
  }
}
