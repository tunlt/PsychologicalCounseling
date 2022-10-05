import 'package:astrology/resourse/consultant/History/components/body.dart';
import 'package:astrology/resourse/consultant/components/bottombar_consultant.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  // _HistoryScreenState createState() => _HistoryScreenState();
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: BottomBarPsycApp(selected: "History"),
    );
  }
}
