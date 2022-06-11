import 'package:flutter/material.dart';
import 'package:swag_app/constants.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, "/verifyAccount");
            },
            title: Text(
              "Apply for verified account",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            title: Text(
              "Change password",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.account_circle_outlined,
              color: kPrimaryColor,
            ),
            title: Text(
              "About us",
              style: TextStyle(color: Colors.white),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
          ListTile(
            title: Text(
              "Privacy and policy",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            title: Text(
              "Terms and conditions",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            title: Text(
              "Rate us on play store",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ListTile(
            title: Text(
              "Deactivate your account",
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
