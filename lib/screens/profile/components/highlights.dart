import 'package:flutter/material.dart';

class Highlights extends StatelessWidget {
  const Highlights({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                //fontFamily: "proxia nova",
                //fontWeight: FontWeight.bold,
                fontSize: 12)),
      ],
    );
  }
}
