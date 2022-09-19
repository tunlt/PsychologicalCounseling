import 'package:flutter/material.dart';
import 'package:astrology/resourse/consultant/Appointment/components/body_dart.dart';

class AppointmentScreen extends StatefulWidget {
  const AppointmentScreen({Key? key}) : super(key: key);

  @override
  // _AppointmentScreenState createState() => _AppointmentScreenState();
  _AppontmentScreenState createState() => _AppontmentScreenState();
}

class _AppontmentScreenState extends State<AppointmentScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Body(),
    );
  }
}
