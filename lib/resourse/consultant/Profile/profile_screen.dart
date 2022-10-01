import 'package:astrology/resourse/consultant/Profile/conponents/body.dart';
import 'package:astrology/resourse/consultant/components/bottombar_consultant.dart';
import 'package:flutter/material.dart';

class ProfileConsultantScreen extends StatefulWidget {
  const ProfileConsultantScreen({super.key});

  @override
  State<ProfileConsultantScreen> createState() =>
      _ProfileConsultantScreenState();
}

class _ProfileConsultantScreenState extends State<ProfileConsultantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProfileConsultant(),
      bottomNavigationBar: BottomBarPsycApp(selected: "profile"),
    );
  }
}
