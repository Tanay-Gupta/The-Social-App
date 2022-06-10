import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:swag_app/backend/services/auth/authentication.dart';
import 'package:swag_app/constants.dart';
import 'package:swag_app/screens/components/default_button.dart';
import 'package:swag_app/screens/otp/otp_screen.dart';

class MobileNumberForm extends StatelessWidget {
  final TextEditingController number = TextEditingController();
  String code = '+91';

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    // String code = '+91';
    return Column(
      children: [
        CodePicker(
          cnt: number,
          code: (newValue) {
            code = newValue.toString();
          },
        ),
        SizedBox(
          height: screenSize.height * .03,
        ),
        DefaultButton(
          press: () async {
            if (number.text.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Empty Number Fields !!"),
                duration: Duration(seconds: 2),
              ));
            } else if (number.text.length < 10) {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Invalid Number Length !!"),
                duration: Duration(seconds: 2),
              ));
            } else {
              String respose = await AuthenticationAPI()
                  .sendOtp(code + number.text.toString());
              if (respose == 'true') {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Sending OTP...."),
                  duration: Duration(seconds: 2),
                ));
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OtpScreen(
                      number: code + number.text.toString(),
                      value: 0,
                    ),
                  ),
                );
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(respose),
                  duration: const Duration(seconds: 2),
                ));
              }
            } //end of else
          },
          text: "NEXT",
        )
      ],
    );
  }
}

class CodePicker extends StatelessWidget {
  final Function(CountryCode) code;
  final TextEditingController cnt;
  const CodePicker({Key? key, required this.code, required this.cnt})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return (Material(
        color: const Color(0xff151515),
        borderRadius: BorderRadiusDirectional.circular(8),
        child: SizedBox(
            height: 58,
            child: Center(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CountryCodePicker(
                      backgroundColor: Colors.transparent, //color of dialog box
                      dialogBackgroundColor: const Color(0xff151515),
                      barrierColor: Colors.transparent, //border of dialog box
                      dialogTextStyle: const TextStyle(color: Colors.white),
                      searchStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      closeIcon: const Icon(Icons.close, color: kPrimaryColor),
                      searchDecoration: const InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.white)),
                      onChanged: code,

                      showFlag: true,
                      showFlagDialog: true,
                      showDropDownButton: false,
                      dialogSize: Size(size.width * 0.8, size.height * 0.7),
                      textStyle: const TextStyle(
                          color: Colors.white, fontSize: 16), //number ka style
                      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                      initialSelection: '+91',
                      favorite: const ['+91', '+92'],
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 58,
                      width: size.width * .5,
                      //color: Colors.red,
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        //validator: checker,
                        controller: cnt,
                        cursorColor: kPrimaryColor,
                        //obscureText: privacy,
                        keyboardType: TextInputType.phone,

                        decoration: const InputDecoration(
                          hintText: "Enter Number",
                          hintStyle:
                              TextStyle(fontSize: 16, color: Color(0xff484848)),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ]),
            ))));
  }
}
