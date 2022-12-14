import 'package:astrology/resourse/consultant/History/history_screen.dart';
import 'package:astrology/resourse/consultant/Home/home_screen.dart';
import 'package:astrology/resourse/consultant/Login/login_screen.dart';
import 'package:astrology/resourse/consultant/Profile/editprofile_screen.dart';
import 'package:astrology/resourse/consultant/Profile/profile_screen.dart';
import 'package:astrology/resourse/consultant/Register/veriify_email.dart';
import 'package:astrology/resourse/consultant/Schedule/schedule_screen.dart';
import 'package:astrology/resourse/consultant/callconsultant/call_screen.dart';
import 'package:astrology/resourse/consultant/callconsultant/components/bodyCall.dart';
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
      initialRoute: "/login_screen",
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
        GetPage(
            name: '/profile_screen',
            page: () => ProfileConsultantScreen(),
            binding: Binding()),
        GetPage(
            name: '/editprofile_screen',
            page: () => EditProfileConsultantScreen(),
            binding: Binding()),
        GetPage(
            name: '/call_screen', page: () => CallScreen(), binding: Binding()),
        GetPage(name: '/bodyCall', page: () => BodyCall(), binding: Binding()),
        GetPage(
            name: '/schedule_screen',
            page: () => ScheduleScreen(),
            binding: Binding()),
        GetPage(
            name: '/history_screen',
            page: () => HistoryScreen(),
            binding: Binding()),
        GetPage(
            name: '/login_screen',
            page: () => LoginScreen(),
            binding: Binding()),
      ],
    ),
  );
}
