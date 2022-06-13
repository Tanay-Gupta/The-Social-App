import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Notifications'),
        actions: [
          if (true)
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            ),
        ],
      ),
      body: ListView(
        children: [
          tiles(
              image: AssetImage("assets/images/1.png"),
              title: "someone liked your photo",
              subtitle: "9:30 am"),
          tiles(
              image: AssetImage("assets/images/2.png"),
              title: "you and 456 people  liked your photo",
              subtitle: "9:30 am"),
          tiles(
              image: AssetImage("assets/images/3.png"),
              title: "rishu____ started following you..",
              subtitle: "9:30 am"),
          tiles(
              image: AssetImage("assets/images/4.png"),
              title: "rishu____ commented on your post.. ",
              subtitle: "9:30 am"),
          tiles(
              image: AssetImage("assets/images/1.png"),
              title: "someone liked your Photo",
              subtitle: "9:30 am"),
          tiles(
              image: AssetImage("assets/images/3.png"),
              title: "someone liked your photo",
              subtitle: "9:30 am"),
        ],
      ),
    );
  }

  Widget tiles({image, title, subtitle}) {
    return ListTile(
      leading: CircleAvatar(
        radius: 40,
        backgroundImage: image,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
      //trailing: Icon(Icons.keyboard_arrow_right),
      onTap: () {},
    );
  }
}
