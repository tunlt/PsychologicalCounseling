import 'package:astrology/resourse/consultant/Home/components/body.dart';
import 'package:astrology/resourse/consultant/components/bottombar_consultant.dart';
import 'package:flutter/material.dart';

class HomeScreenConsultant extends StatefulWidget {
  const HomeScreenConsultant({Key? key}) : super(key: key);

  @override
  // _HomeScreenScreenState createState() => _HomeScreenScreenState();
  _HomeScreenConsultantState createState() => _HomeScreenConsultantState();
}

class _HomeScreenConsultantState extends State<HomeScreenConsultant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomBarPsycApp(selected: "home"),
    );
  }
}
