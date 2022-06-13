import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xffCD0000);
const kTextColor = Color(0xFFFFFFFF);

const headingStyle = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.w800,
  color: Colors.white,
  height: 1.5,
);
const formfieldTextStyle = TextStyle(fontSize: 14.0, color: Color(0xff484848));

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

final RegExp userNameValidatorRegExp = RegExp(r"^[a-z._]+[a-z0-9_.]+");
const String kUsernameInvalidError = "Username start with a-z or . _";
const String kEmailNullError = "Please Enter your email";
const String kUsernameNullError = "Please Enter your username";
const String kNameNullError = "Please Enter your name";
const String kInvalidEmailError = "Please Enter Valid Email";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: (15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular((5)),
    borderSide: BorderSide(color: Colors.white),
  );
}
