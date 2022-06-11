import 'package:flutter/material.dart';
import 'package:swag_app/screens/profile/components/body.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileHeaderState();
}

class _ProfileHeaderState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileBody(),
    );
  }
}
