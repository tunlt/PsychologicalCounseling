import 'package:astrology/resourse/consultant/Home/home_screen.dart';
import 'package:astrology/resourse/consultant/Register/veriify_email.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'resourse/consultant/Register/register_screen.dart';
import 'resourse/consultant/binding/binding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Binding().dependencies();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: Binding(),
      // home: RegisterScreen(),
      initialRoute: "/register_screen",
      getPages: [
        GetPage(
          name: '/register_screen',
          page: () => RegisterScreen(),
          binding: Binding(),
        ),
        GetPage(
            name: '/home_screen',
            page: () => HomeScreenConsultant(),
            binding: Binding()),
        GetPage(
            name: '/verify_email',
            page: () => VerifyEmailScreen(),
            binding: Binding()),
      ],
    ),
  );
}
