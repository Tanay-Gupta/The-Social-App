import 'package:flutter/material.dart';
import 'package:swag_app/constants.dart';
import 'package:swag_app/screens/components/default_button.dart';

class VerifyAccountPage extends StatelessWidget {
  const VerifyAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Account Verification'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          shrinkWrap: true,
          //reverse: true,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("who are you?"),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                focusedBorder: outlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
              obscureText: false,
            ),
            SizedBox(
              height: 45,
            ),
            Text("upload any gov issued id card"),
            SizedBox(
              height: 10,
            ),
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                focusedBorder: outlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
              obscureText: false,
            ),
            SizedBox(
              height: 25,
            ),
            Text("Paste any 2 reference links"),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                focusedBorder: outlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
              obscureText: false,
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                focusedBorder: outlineInputBorder(),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
              obscureText: false,
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: DefaultButton(
          text: "Submit",
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
