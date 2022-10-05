import 'package:astrology/resourse/consultant/Profile/editprofile_screen.dart';
import 'package:astrology/resourse/consultant/controller/consultant.dart';
import 'package:astrology/resourse/consultant/controller/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileConsultant extends StatefulWidget {
  const ProfileConsultant({super.key});

  @override
  State<ProfileConsultant> createState() => _ProfileConsultantState();
}

final ConsultantController consultantController =
    Get.find<ConsultantController>();
final logoutController = Get.find<LoginController>();

class _ProfileConsultantState extends State<ProfileConsultant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tài khoản của tôi"),
        backgroundColor: Colors.purple[200],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25),
              child: Container(
                height: 115,
                width: 115,
                child: Stack(
                  fit: StackFit.expand,
                  clipBehavior: Clip.none,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://upanh123.com/wp-content/uploads/2020/11/hinh-anh-anime-chibi-girl5.jpg"),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.purple,
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: Color(0xFFF5F6F9),
                ),
                onPressed: () {
                  consultantController.getConsultantDetail(39);
                  Get.to(EditProfileConsultantScreen());
                },
                child: Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(width: 20),
                    Expanded(child: Text("Thông tin của tôi")),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.purple,
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: Color(0xFFF5F6F9),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.notifications),
                    SizedBox(width: 20),
                    Expanded(child: Text("Thông báo")),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.purple,
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: Color(0xFFF5F6F9),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.shopping_bag_rounded),
                    SizedBox(width: 20),
                    Expanded(child: Text("Cửa hàng của tôi")),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.purple,
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: Color(0xFFF5F6F9),
                ),
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.history),
                    SizedBox(width: 20),
                    Expanded(child: Text("Lịch sử người đặt")),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.purple,
                  padding: EdgeInsets.all(20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  backgroundColor: Color(0xFFF5F6F9),
                ),
                onPressed: () {
                  logoutController.logout();
                },
                child: Row(
                  children: [
                    Icon(Icons.logout),
                    SizedBox(width: 20),
                    Expanded(child: Text("Đăng xuất")),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
