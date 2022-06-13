import 'package:flutter/material.dart';
import 'package:swag_app/constants.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("EDIT", style: TextStyle(color: Colors.white)),
            Text("done", style: TextStyle(color: kPrimaryColor)),
          ],
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            //shrinkWrap: true,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/images/pfp.png"),
              ),
              SizedBox(
                height: 5,
              ),
              Text("Add new profile pic"),
              SizedBox(
                height: 35,
              ),
              TextField(
                decoration: const InputDecoration(
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  //disabledBorder: OutlineInputBorder(
                  //  borderSide: BorderSide(color: Colors.grey)),
                  labelText: "change your name",
                  labelStyle: TextStyle(color: Colors.grey),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "add name",
                  //icon: Icon(Icons.analytics),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: const InputDecoration(
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  //disabledBorder: OutlineInputBorder(
                  //  borderSide: BorderSide(color: Colors.grey)),
                  labelText: "change your username",
                  labelStyle: TextStyle(color: Colors.grey),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "add name",
                  //icon: Icon(Icons.analytics),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                maxLines: 5,
                decoration: const InputDecoration(
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  //disabledBorder: OutlineInputBorder(
                  //  borderSide: BorderSide(color: Colors.grey)),
                  labelText: "bio",
                  labelStyle: TextStyle(color: Colors.grey),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "describe about yourself",
                  //icon: Icon(Icons.analytics),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                decoration: const InputDecoration(
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  //disabledBorder: OutlineInputBorder(
                  //  borderSide: BorderSide(color: Colors.grey)),
                  labelText: "link",
                  labelStyle: TextStyle(color: Colors.grey),
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: "add link",
                  //icon: Icon(Icons.analytics),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
