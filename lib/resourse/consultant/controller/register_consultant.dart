import 'dart:convert';

import 'package:astrology/resourse/consultant/Home/home_screen.dart';
import 'package:astrology/resourse/consultant/Register/veriify_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class RegisterController extends GetxController {
  Future<void> addRegister(
      TextEditingController emailController,
      fullnameController,
      usernameController,
      passwordController,
      addressController,
      genderController,
      dobController,
      phoneController) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String email = emailController.text;
    prefs.setString('emailConsultant', email);
    // final String? token = prefs.getString('token');
    final String? token =
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1lIjpbIjciLCJhZG1pbnBzeWMiLCJhZG1pbjEyNDUiXSwiZXhwIjoxNjYzOTI1MDIzLCJpc3MiOiJUb2tlbkF1dGhieVRhIiwiYXVkIjoiVG9rZW5BdXRoYnlUYSJ9.2A6pS10bR4xALZOnTaxfVWhhHJK-8WJPjpk2gKqOeoE";
    try {
      String body = json.encode({
        'userName': usernameController.text,
        'passWord': passwordController.text,
        'email': emailController.text,
      });
      String body2 = json.encode({
        'email': emailController.text,
        'fullName': fullnameController.text,
        'address': addressController.text,
        'dob': dobController.text,
        'gender': genderController.text,
        'phone': phoneController.text,
      });
      print(body);
      final response = await http.post(
          Uri.parse(
              "https://www.psychologicalcounselingv1.somee.com/api/Users/createconsultantv2"),
          body: body,
          headers: {"content-type": "application/json"});

      final response2 = await http.put(
          Uri.parse(
              "https://www.psychologicalcounselingv1.somee.com/api/Consultants/update"),
          body: body2,
          headers: {
            "Content-Type": "application/json",
            "Authorization": "Bearer $token"
          });

      print("api len");
      print(response.statusCode);

      print(response2.statusCode);
      print("api 2 len");
      if (response.statusCode == 200 && response2.statusCode == 200) {
        print("regis success");
        Get.to(VerifyEmailScreen());
        Fluttertoast.showToast(
            msg: "Code đã được gửi vào mail của bạn",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.white,
            textColor: Colors.black,
            fontSize: 16.0);
      } else {
        print("fail regis");
        Fluttertoast.showToast(
            msg: "Đăng Kí không thành công",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red.shade200,
            textColor: Colors.black,
            fontSize: 16.0);
      }
    } catch (error) {
      print(error);
    }
  }
}
