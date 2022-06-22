import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  Stories({Key? key}) : super(key: key);

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
              itemNew(image: 'assets/images/2.png', name: "Rishu Yadav"),
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

  final kGradientBoxDecoration = BoxDecoration(
    gradient: const LinearGradient(
        colors: [Colors.yellow, Colors.red],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter),
    border: Border.all(
        // color: Colors.green,
        ),
    borderRadius: BorderRadius.circular(17),
  );
  final kGradientBoxDecorationTag = BoxDecoration(
    gradient: const LinearGradient(
      colors: [Colors.yellow, Colors.red],
      // begin: Alignment.topLeft,
      // end: Alignment.bottomCenter
    ),
    border: Border.all(
        // color: Colors.green,
        ),
    borderRadius: BorderRadius.circular(5),
  );
  final kGradientBoxDecorationOld = BoxDecoration(
    gradient: const LinearGradient(
        colors: [Colors.grey, Colors.grey],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter),
    border: Border.all(
        // color: Colors.green,
        ),
    borderRadius: BorderRadius.circular(17),
  );

  Widget itemNew({image, name}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                // ignore: sort_child_properties_last
                child: Padding(
                  padding: const EdgeInsets.all(1.5),
                  child: Container(
                    // ignore: sort_child_properties_last
                    //  child: const Text("Button Title with your style"),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.cover)),
                  ),
                ),
                height: 125,
                width: 95,
                decoration: kGradientBoxDecoration,
              ),
            ),
            Positioned(
              left: 15,
              top: 15,
              child: Container(
                // ignore: sort_child_properties_last
                child: const Center(
                  child: Text(
                    "NEW",
                    style: TextStyle(
                        fontSize: 8,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                height: 12,
                width: 32,
                decoration: kGradientBoxDecorationTag,
              ),
            )
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(name,
                style: const TextStyle(

                    //fontWeight: FontWeight.bold,
                    fontSize: 12)),
            const SizedBox(
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

  Widget item({image, name}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                // ignore: sort_child_properties_last
                child: Padding(
                  padding: const EdgeInsets.all(1.5),
                  child: Container(
                    // ignore: sort_child_properties_last
                    //  child: const Text("Button Title with your style"),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        image: DecorationImage(
                            image: AssetImage(image), fit: BoxFit.cover)),
                  ),
                ),
                height: 125,
                width: 95,
                decoration: kGradientBoxDecorationOld,
              ),
            ),
          ],
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(name,
                style: const TextStyle(
                    fontFamily: "proxia nova",
                    //fontWeight: FontWeight.bold,
                    fontSize: 12)),
            const SizedBox(
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
