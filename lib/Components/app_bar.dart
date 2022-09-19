import 'dart:ui';
import 'package:astrology/resourse/profile/add&editProfile/profile_detail.dart';

import 'package:flutter/material.dart';
import 'package:astrology/resourse/Login&register/login.dart';
import 'package:astrology/resourse/profile/account.dart';
import '../model/user.dart';

class TopBar {
  static AppBar getAppBarHome(Size size, BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: size.width * 0.6,
              child: Text(
                "Zodiac",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ));
                },
                icon: Image.asset(
                  "assets/icon/wallet-icon.png",
                  color: Colors.purple,
                  width: size.width * 0.07,
                ),
                iconSize: size.width * 0.08),
            IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return AccountPage();
                      // ProfileDetailPage(
                      //   // item: item,
                      // );
                    },
                  ));
                },
                icon: Image.asset(
                  "assets/icon/profile.png",
                  color: Colors.purple,
                  width: size.width * 0.07,
                ),
                iconSize: size.width * 0.08),
          ],
        ));
  }

  static AppBar getAppBarHasBackIcon(
      Size size, BuildContext context, String title, Function() func) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Stack(alignment: Alignment.centerLeft, children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(190, 62, 62, 1),
                      fontSize: 18),
                ),
              )
            ],
          ),
        ),
        IconButton(
            onPressed: func,
            icon: Image.asset(
              "assets/icon/back.png",
              width: size.width * 0.07,
            )),
      ]),
      backgroundColor: Colors.red[100],
    );
  }
}
