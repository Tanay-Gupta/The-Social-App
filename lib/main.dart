import 'package:flutter/material.dart';
import 'package:swag_app/screens/sign_in/sign_in_screen.dart';
import 'package:swag_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SWAG',
      theme: theme(),
      home: const SignInScreen(),
    );
  }
}
