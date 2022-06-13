import 'package:flutter/material.dart';

import 'package:swag_app/backend/services/auth/authentication.dart';
import 'package:swag_app/screens/components/default_button.dart';
import 'package:swag_app/screens/register/components/register_form.dart';
import 'package:swag_app/screens/register/register.dart';

import '../../../constants.dart';

class OtpForm extends StatefulWidget {
  final String? number;
  const OtpForm({Key? key, this.number}) : super(key: key);

  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  List<String> otp = List.filled(4, "", growable: false);
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  @override
  void initState() {
    super.initState();

    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Form(
      child: Column(
        children: [
          SizedBox(height: screenSize.height * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 60,
                child: TextFormField(
                  autofocus: true,
                  obscureText: false,
                  style: TextStyle(fontSize: 24, color: Colors.white),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    otp[0] = value;
                    nextField(value, pin2FocusNode);
                  },
                ),
              ),
              SizedBox(
                width: (60),
                child: TextFormField(
                  focusNode: pin2FocusNode,
                  obscureText: false,
                  style: TextStyle(fontSize: 24, color: Colors.white),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,

                  onChanged: (value) {
                    otp[1] = value;
                    nextField(value, pin3FocusNode);
                  },
                  // onChanged: (value) => nextField(value, pin3FocusNode),
                ),
              ),
              SizedBox(
                width: (60),
                child: TextFormField(
                  focusNode: pin3FocusNode,
                  obscureText: false,
                  style: TextStyle(fontSize: 24, color: Colors.white),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,

                  onChanged: (value) {
                    otp[2] = value;
                    nextField(value, pin4FocusNode);
                  },
                  // onChanged: (value) => nextField(value, pin4FocusNode),
                ),
              ),
              SizedBox(
                width: (60),
                child: TextFormField(
                  focusNode: pin4FocusNode,
                  obscureText: false,
                  style: TextStyle(fontSize: 24, color: Colors.white),
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: otpInputDecoration,
                  onChanged: (value) {
                    if (value.length == 1) {
                      otp[3] = value;
                      pin4FocusNode!.unfocus();
                      // Then you need to check is the code is correct or not
                    }
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: screenSize.height * 0.02),
          buildTimer(widget.number, context),
          SizedBox(height: screenSize.height * 0.02),
          DefaultButton(
            text: "NEXT",
            press: () async {
              String finalOtp = otp[0] + otp[1] + otp[2] + otp[3];
              print("added otp" + finalOtp);
              if (widget.number == null) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Invalid Number"),
                  duration: Duration(seconds: 2),
                ));
              } else if (otp.length != 4) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Enter OTP"),
                  duration: Duration(seconds: 2),
                ));
              } else {
                String num = widget.number!;
                String respose = await AuthenticationAPI()
                    .verifyOtp(widget.number, finalOtp);
                if (respose == 'true') {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text("Number verified"),
                    duration: Duration(seconds: 2),
                  ));

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterScreen(
                        number: num,
                      ),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Server response: " + respose),
                    duration: const Duration(seconds: 2),
                  ));
                }
              }

              // print(otp);
              // print(widget.number);

//                   if (value == 0) {
//                     Navigator.pushReplacementNamed(context, '/home');
//                   } else {
// //reset password
//                     Navigator.pushReplacementNamed(context, '/change_password');
//                   }
            },
          ),

          //--------------------------------------temp button--------------------------
          // TextButton(
          //     onPressed: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(builder: (context) => RegisterScreen()),
          //       );
          //     },
          //     child: Text("temperory bypass")),
          // SizedBox(height: SizeConfig.screenHeight * 0.15),
        ],
      ),
    );
  }
}

Row buildTimer(String? number, BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      TextButton(
          onPressed: () async {
            String response = await AuthenticationAPI().sendOtp(number);

            if (response == 'true') {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Sending OTP...."),
                duration: Duration(seconds: 2),
              ));
            } else {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Server msg: " + response),
                duration: const Duration(seconds: 2),
              ));
            }
          },
          child: const Text("RESEND OTP ?",
              style: TextStyle(fontSize: 14, color: Color(0xffF7DE00)))),
      TweenAnimationBuilder(
        tween: Tween(begin: 60.0, end: 0.0),
        duration: const Duration(seconds: 60),
        builder: (_, dynamic value, child) => Text(
          "${value.toInt()} S",
          style: const TextStyle(fontSize: 14, color: Colors.white),
        ),
        onEnd: () async {
          String response = await AuthenticationAPI().sendOtp(number);

          if (response == 'true') {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Sending OTP...."),
              duration: Duration(seconds: 2),
            ));
          } else {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Server msg: " + response),
              duration: const Duration(seconds: 2),
            ));
          }
        },
      ),
    ],
  );
}
