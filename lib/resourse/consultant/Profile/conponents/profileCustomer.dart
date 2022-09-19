import 'dart:math';

import 'package:flutter/material.dart';

class ProfileCustomer extends StatefulWidget {
  const ProfileCustomer({super.key});

  @override
  State<ProfileCustomer> createState() => _ProfileCustomerState();
}

class _ProfileCustomerState extends State<ProfileCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //   child: Title(color: Colors.black, child: Text('hahahah')),
      // ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
            child: Center(
              child: Container(
                height: 200,
                width: 200,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://upanh123.com/wp-content/uploads/2020/11/hinh-anh-anime-chibi-girl5.jpg'),
                  radius: 35,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Container(
                height: 50,
                width: max(0, 500),
                color: Color.fromARGB(133, 175, 175, 149),
                child:
                    Center(child: Text('Họ Và Tên: ' + 'Nguyễn Lâm Thanh Tú'))),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Container(
                height: 50,
                width: max(0, 500),
                color: Color.fromARGB(133, 175, 175, 0),
                child:
                    Center(child: Text('Ngày Sinh: ' + 'Nguyễn Lâm Thanh Tú'))),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Container(
                height: 50,
                width: max(0, 500),
                color: Color.fromARGB(133, 175, 175, 0),
                child:
                    Center(child: Text('Địa chỉ: ' + 'Nguyễn Lâm Thanh Tú'))),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Container(
                height: 50,
                width: max(0, 500),
                color: Color.fromARGB(133, 151, 82, 0),
                child:
                    Center(child: Text('Giới tính: ' + 'Nguyễn Lâm Thanh Tú'))),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Container(
                height: 50,
                width: max(0, 500),
                color: Color.fromARGB(133, 151, 82, 0),
                child: Center(
                    child: Text('Cung hoàng đạo: ' + 'Nguyễn Lâm Thanh Tú'))),
          ),
        ],
      ),
    );
  }
}
