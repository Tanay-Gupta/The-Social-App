import 'package:flutter/material.dart';
import 'package:swag_app/routes.dart';
import 'package:swag_app/screens/change_password/change_password.dart';
import 'package:swag_app/screens/forgot_password/forgot_password.dart';
import 'package:swag_app/screens/home/home.dart';
import 'package:swag_app/screens/otp/otp_screen.dart';
import 'package:swag_app/screens/profile/profile.dart';
import 'package:swag_app/screens/sign_in/sign_in_screen.dart';
import 'package:swag_app/screens/sign_up/sign_up_screen.dart';
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
      home: HomeScreen(),
      routes: {
        '/signin': (context) => SignInScreen(),
        '/forget_password': (context) => ForgetPasswordScreen(),
        "/change_password": (context) => ChangePasswordScreen(),
        '/signup': (context) => SignUpScreen(),
        '/otp': (context) => OtpScreen(),
        '/home': (context) => HomeScreen(),
        '/profile': (context) => ProfilePage()
      },
      // initialRoute: SignUpScreen.routeName,
      // routes: {
      //   SignInScreen.routeName: (context) => SignInScreen(),
      //   SignUpScreen.routeName: (context) => SignUpScreen(),
      //   OtpScreen.routeName: (context) => OtpScreen(),

      // },
    );
  }
}
