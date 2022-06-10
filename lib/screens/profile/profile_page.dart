import 'package:flutter/material.dart';
import 'package:swag_app/screens/profile/components/body.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BodyProfile(),
    );
  }
}
