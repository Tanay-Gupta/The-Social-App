import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthenticationAPI {
  //------------------------------------------------SEND OTP-------------------------------------------------------
  Future<String> sendOtp(String? phoneNumber) async {
    print("Send otp triggered");

    String s = phoneNumber!;
    print(s);
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST',
        Uri.parse(
            'https://social-backend-node-express.herokuapp.com/auth/sendOtp'));
    request.body = json.encode({"phone": s});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      //   //return (true);

      print(await response.stream.bytesToString());
      return "true";
    } else {
      //return false;
      return (response.reasonPhrase.toString());
    }
  }

  //------------------------------------------------VERIFY OTP-------------------------------------------------------
  Future<String> verifyOtp(String? phoneNumber, String otp4Digit) async {
    print("verify otp triggered");
    String s = phoneNumber!;

    print(s);
    print(otp4Digit);
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST',
        Uri.parse(
            'https://social-backend-node-express.herokuapp.com/auth/verifyOtp'));
    request.body = json.encode({"phone": s, "code": otp4Digit});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());

      return "true";
    } else {
      return (response.reasonPhrase.toString());
    }
  }

  //------------------------------------------------REGISTER-------------------------------------------------------
  Future<String> register(
      String phoneNumber, String name, String username, String password) async {
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST',
        Uri.parse(
            'https://social-backend-node-express.herokuapp.com/auth/register'));
    request.body = json.encode({
      "phone": phoneNumber,
      "name": name,
      "username": username,
      "password": password
    });
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
      return "true";
    } else {
      return (response.reasonPhrase.toString());
    }
  }

  //------------------------------------------------LOGIN WITH USERNAME-------------------------------------------------------
  Future<String> loginWithUsername(String username, String password) async {
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST',
        Uri.parse(
            'https://social-backend-node-express.herokuapp.com/auth/login'));
    request.body = json.encode({"username": username, "password": password});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      //(await response.stream.bytesToString());
      return ("true");
    } else {
      return (response.reasonPhrase.toString());
    }
  }

  //------------------------------------------------LOGIN WITH PHONE NUMBER-------------------------------------------------------
  Future<String> loginWithPhone(String phoneNumber, String password) async {
    print("login with phone triggered");
    var headers = {'Content-Type': 'application/json'};
    var request = http.Request(
        'POST',
        Uri.parse(
            'https://social-backend-node-express.herokuapp.com/auth/login'));
    request.body = json.encode({"phone": phoneNumber, "password": password});
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      // print(await response.stream.bytesToString());

      return 'true';
    } else {
      return (response.reasonPhrase.toString());
    }
  }
}
