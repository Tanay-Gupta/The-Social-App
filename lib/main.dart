import 'package:flutter/material.dart';
import 'package:swag_app/data.dart';
import 'package:swag_app/routes.dart';
import 'package:swag_app/screens/StoryScreens/story_screen.dart';
import 'package:swag_app/screens/appBar/chatScreen.dart';
import 'package:swag_app/screens/appBar/notifications.dart';
import 'package:swag_app/screens/appBar/settings/editProfile.dart';
import 'package:swag_app/screens/appBar/settings/settings.dart';
import 'package:swag_app/screens/appBar/settings/verifyAccount.dart';
import 'package:swag_app/screens/change_password/change_password.dart';
import 'package:swag_app/screens/createProfile/createProfile.dart';
import 'package:swag_app/screens/forgot_password/forgot_password.dart';
import 'package:swag_app/screens/home/components/comments.dart';
import 'package:swag_app/screens/home/home.dart';
import 'package:swag_app/screens/homescreen/nav.dart';
import 'package:swag_app/screens/otp/otp_screen.dart';
import 'package:swag_app/screens/profile/follow/followers.dart';
import 'package:swag_app/screens/profile/follow/following.dart';
import 'package:swag_app/screens/register/components/register_form.dart';
import 'package:swag_app/screens/register/register.dart';
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
      home: SignInScreen(),
      // home: StoryScreen(stories: stories),
      routes: {
        '/signin': (context) => SignInScreen(),
        // "/story":(context)=> StoryScreen(stories: stories),
        '/forget_password': (context) => ForgetPasswordScreen(),
        "/change_password": (context) => ChangePasswordScreen(),
        '/signup': (context) => SignUpScreen(),
        '/otp': (context) => OtpScreen(),
        '/createProfile': (context) => CreateProfile(),
        '/nav': (context) => Nav(),
        '/notifications': (context) => Notifications(),
        '/settings': (context) => Settings(),
        '/verifyAccount': (context) => VerifyAccountPage(),
        '/editProfile': (context) => EditProfilePage(),
        '/chatScreen': (context) => ChatScreen(),
        '/followers': (context) => ProfileFollowers(),
        '/following': (context) => ProfileFollowing(),
        '/comments': (context) => CommentsPage(),
      },
    );
  }
}
