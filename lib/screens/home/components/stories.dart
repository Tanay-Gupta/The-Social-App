import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 12),
          child: Text(
            "STORIES",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          // color: Colors.red,
          padding: const EdgeInsets.only(bottom: 5),
          height: 160,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              item(image: 'assets/images/2.png', name: "Rishu Yadav"),
              item(image: 'assets/images/3.png', name: "Sonam Verma"),
              item(image: 'assets/images/1.png', name: "Rishu Yadav"),
              item(image: 'assets/images/4.png', name: "Roma Verma"),
              item(image: 'assets/images/3.png', name: "Sonam Verma"),
              item(image: 'assets/images/1.png', name: "Tanmay Rathore"),
            ],
          ),
        ),
      ],
    );
  }

  Widget item({image, name}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            height: 125,
            width: 95,
            //margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(name,
                style: TextStyle(
                    fontFamily: "proxia nova",
                    //fontWeight: FontWeight.bold,
                    fontSize: 12)),
            SizedBox(
              width: 2,
            ),
            SizedBox(
                height: 10,
                width: 10,
                child: Image.asset("assets/icons/check 5.png"))
          ],
        )
      ],
    );
  }
}
