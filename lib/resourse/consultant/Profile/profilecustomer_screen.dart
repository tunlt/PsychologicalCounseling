import 'package:astrology/resourse/consultant/Profile/conponents/profileCustomer.dart';
import 'package:flutter/material.dart';

class ProfileCustomerScreen extends StatefulWidget {
  const ProfileCustomerScreen({Key? key}) : super(key: key);

  @override
  _ProfileCustomerScreenState createState() => _ProfileCustomerScreenState();
}

class _ProfileCustomerScreenState extends State<ProfileCustomerScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProfileCustomer(),
    );
  }
}
