import 'package:flutter/material.dart';
import 'package:swag_app/screens/createProfile/components/body.dart';

class CreateProfile extends StatelessWidget {
  const CreateProfile({Key? key}) : super(key: key);
  static String routeName = "/createProfile";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
