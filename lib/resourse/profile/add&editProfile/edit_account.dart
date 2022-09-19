import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';

import '../../../reponsitory/add_profile.dart';
import '../../../reponsitory/current_user_shared_preferences.dart';

class EditAccountPage extends StatefulWidget {
  @override
  State<EditAccountPage> createState() => _EditAccountPageState();
}

class _EditAccountPageState extends State<EditAccountPage> {
  XFile? image;

  String _name = CurrentUser.getCurrentUserName() ?? '';

  String _date = CurrentUser.getDate() ?? '';

  String _place = CurrentUser.getPlace() ?? '';

  // double _latitude = CurrentUser.getLatitude() ?? 0.0;

  // double _longitude = CurrentUser.getLongitude() ?? 0.0;

  // String _imageLink = CurrentUser.getAvatarLink() ?? '';

  // bool _isFemale = CurrentUser.getGender() ?? false;

  // int profileId = CurrentUser.getId() ?? 0;

  final List<AccountInformation> _list = [
    AccountInformation(
        icon: Icons.person, title: 'Họ và tên', content: 'Hieu Nguyen'),
    AccountInformation(
        icon: Icons.cake, title: 'Ngày sinh', content: '28-09-2000'),
    AccountInformation(
        icon: Icons.place, title: 'Nơi sinh', content: '12:52:52'),
    AccountInformation(
        icon: Icons.circle, title: 'Vĩ độ', content: 'Chọn địa chỉ'),
    AccountInformation(
        icon: Icons.radar, title: 'Kinh độ', content: 'Chọn địa chỉ'),
  ];

  Future pickImage() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (image == null) return;
    // final res = await uploadImage(image.path);
    // setState(() {
    //   _imageLink = res;
    // });
  }

  // void _onClicked() {
  //   setState(() {
  //     _isFemale = false;
  //   });
  // }

  // void _onClicked1() {
  //   setState(() {
  //     _isFemale = true;
  //   });
  // }

  final _nameController = TextEditingController();
  String name = '';
  final _dateController = TextEditingController();
  String date = '';
  final _placeController = TextEditingController();
  String place = '';
  final _latitudeController = TextEditingController();
  double latitude = 0.0;
  final _longitudeController = TextEditingController();
  double longitude = 0.0;

  @override
  void dispose() {
    _nameController.dispose();
    _dateController.dispose();
    _placeController.dispose();
    _latitudeController.dispose();
    _longitudeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color.fromRGBO(27, 18, 53, 1),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(27, 18, 53, 1),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 15.0,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Text(
          'Chỉnh sửa hồ sơ',
          style: TextStyle(
            fontSize: 17.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 15.0, 5.0, 15.0),
            child: ElevatedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                            color: Color.fromRGBO(0, 117, 255, 1),
                          )))),
              onPressed: () {
                name = _nameController.text;
                if (name.isEmpty) {
                  setState(() {
                    name = _name;
                  });
                }
                date = _dateController.text;
                if (date.isEmpty) {
                  setState(() {
                    date = _date;
                  });
                }
                place = _placeController.text;
                if (place.isEmpty) {
                  setState(() {
                    place = _place;
                  });
                }
                // latitude = double.parse(_latitudeController.text);
                // if(latitude == 0){
                //   setState(() {
                //     latitude = _latitude;
                //   });
                // }
                // longitude = double.parse(_longitudeController.text);
                // if(longitude == 0){
                //   setState(() {
                //     longitude=_longitude;
                //   });
                // }
                // updateProfile(profileId, name, date, place, latitude, longitude,
                //     _isFemale, _imageLink);
                dispose();
                // CurrentUser.updateCurrentUser(name, date, place, latitude, longitude, _isFemale, _imageLink);
                Navigator.pop(context);
              },
              child: Text(
                'Done',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.fromLTRB(15.0, 10, 15.0, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Container(
                  height: size.height * 0.16,
                  width: size.width * 0.3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://scontent.fsgn5-15.fna.fbcdn.net/v/t39.30808-6/306828431_463684089115167_4431332057427388959_n.jpg?stp=dst-jpg_s851x315&_nc_cat=1&ccb=1-7&_nc_sid=da31f3&_nc_ohc=2T7JscA9QIQAX9DCc0c&tn=_lI93l0CeEEGW7vN&_nc_ht=scontent.fsgn5-15.fna&oh=00_AT_3X_s_P62ilsmxjXBf6waUEw_lFvG1UFlagSONKVuEWA&oe=6325CE27'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: GestureDetector(
                          onTap: () => pickImage(),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.black,
                            ),
                            radius: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              /*Name TextField*/
              Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.white70),
                    color: Color.fromRGBO(250, 250, 250, 0.1),
                  ),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      //Icon
                      Container(
                        padding: EdgeInsets.all(8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                            child: Icon(
                              _list[0].icon,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      //Column
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 2),
                                height: 17,
                                child: Text(
                                  _list[0].title,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.white38,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                              Container(
                                  child: SizedBox(
                                height: 24,
                                child: TextField(
                                  controller: _nameController,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: _name,
                                    hintStyle: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                      //icon
                    ],
                  )),
              SizedBox(
                height: size.height * 0.01,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(0, 5.0, 0, 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        // _onClicked();
                      },
                      child: Container(
                        height: size.height * 0.05,
                        width: size.width * 0.43,
                        // decoration: BoxDecoration(
                        //   color: !_isFemale
                        //       ? Color.fromRGBO(116, 55, 245, 1)
                        //       : Color.fromRGBO(38, 30, 63, 1),
                        //   borderRadius: BorderRadius.circular(10.0),
                        //   border: Border.all(color: Colors.white70),
                        // ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.male,
                              color: Colors.white,
                            ),
                            Text(
                              'Nam',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.05,
                    ),
                    GestureDetector(
                      onTap: () {
                        // _onClicked1();
                      },
                      child: Container(
                        height: size.height * 0.05,
                        width: size.width * 0.43,
                        // decoration: BoxDecoration(
                        //   color: _isFemale
                        //       ? Color.fromRGBO(255, 74, 183, 1)
                        //       : Color.fromRGBO(38, 30, 63, 1),
                        //   borderRadius: BorderRadius.circular(10.0),
                        //   border: Border.all(color: Colors.white70),
                        // ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.female,
                              color: Colors.white,
                            ),
                            Text(
                              'Nữ',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              /*Date TextField*/
              Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.white70),
                    color: Color.fromRGBO(250, 250, 250, 0.1),
                  ),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      //Icon
                      Container(
                        padding: EdgeInsets.all(8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                            child: Icon(
                              _list[1].icon,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      //Column
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 2),
                                height: 17,
                                child: Text(
                                  _list[1].title,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.white38,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                              Container(
                                  child: SizedBox(
                                height: 24,
                                child: TextField(
                                  controller: _dateController,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: _date,
                                    hintStyle: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                      //icon
                    ],
                  )),
              SizedBox(
                height: size.height * 0.01,
              ),
              /*Place TextField*/
              Container(
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(color: Colors.white70),
                    color: Color.fromRGBO(250, 250, 250, 0.1),
                  ),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      //Icon
                      Container(
                        padding: EdgeInsets.all(8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Container(
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                            child: Icon(
                              _list[2].icon,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      //Column
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 2),
                                height: 17,
                                child: Text(
                                  _list[2].title,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    decoration: TextDecoration.none,
                                    color: Colors.white38,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                              Container(
                                  child: SizedBox(
                                height: 24,
                                child: TextField(
                                  controller: _placeController,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: _place,
                                    hintStyle: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              )),
                            ],
                          ),
                        ),
                      ),
                      //icon
                    ],
                  )),
              SizedBox(
                height: size.height * 0.01,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AccountItem extends StatefulWidget {
  AccountInformation item;

  AccountItem({required this.item});

  @override
  State<AccountItem> createState() => _AccountItemState();
}

class _AccountItemState extends State<AccountItem> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller =
        TextEditingController(text: widget.item.content);
    bool _isEnable = false;
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10.0, 0, 5.0),
      child: Theme(
        data: Theme.of(context).copyWith(primaryColor: Colors.white),
        child: Material(
          color: Color.fromRGBO(27, 18, 53, 1),
          child: Container(
            height: size.height * 0.1,
            color: Color.fromRGBO(38, 30, 63, 1),
            child: TextField(
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.white,
              ),
              controller: _controller,
              decoration: InputDecoration(
                // contentPadding: EdgeInsets.zero,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.white70,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(
                    color: Colors.white70,
                  ),
                ),
                prefix: Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: CircleAvatar(
                      radius: 15.0,
                      backgroundColor: Color.fromRGBO(27, 18, 53, 1),
                      child: Icon(
                        widget.item.icon,
                        color: Colors.white,
                      )),
                ),
                label: Text(
                  widget.item.title,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Material(
// color: Color.fromRGBO(27,18,53,1),
// child: Container(
// padding: EdgeInsets.fromLTRB(10,0,10,0),
// height: size.height * 0.11,
// margin: EdgeInsets.fromLTRB(0,20,0,0),
// decoration: BoxDecoration(
// // borderRadius: BorderRadius.circular(10.0),
// color: Color.fromRGBO(38, 30, 63, 1),
// ),
// child: Row(
// children: <Widget>[
// // CircleAvatar(
// //   backgroundColor:Color.fromRGBO(29, 23, 47, 1),
// //   child: Icon(
// //     widget.item.icon,
// //     color: Colors.white,
// //   ),
// // ),
// SizedBox(width: 10.0,),
// Container(
// child: Flexible(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// // Text(
// //   widget.item.title,
// //   style: TextStyle(
// //     color: Colors.white70,
// //     fontSize: 12.0,
// //   ),
// // ),
// TextField(
// style: TextStyle(
// color: Colors.white,
// // fontSize: 12.0,
// ),
// decoration: InputDecoration(
// label: Text('Ho'),
// prefix: CircleAvatar(
// radius: 15.0,
// backgroundColor:Color.fromRGBO(29, 23, 47, 1),
// child: Icon(
// widget.item.icon,
// color: Colors.white,
// ),
// ),
// border: OutlineInputBorder(),
// ),
// controller: _controller,
// ),
// ],
// ),
// ),
// ),
//
// ],
// ),
// ),
// );

class AccountInformation {
  IconData icon;
  String title;
  String content;

  AccountInformation(
      {required this.icon, required this.title, required this.content});
}

class AccountItem1 extends StatefulWidget {
  AccountInformation item;

  AccountItem1({required this.item});

  @override
  State<AccountItem1> createState() => _AccountItem1State();
}

class _AccountItem1State extends State<AccountItem1> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          border: Border.all(color: Colors.white70),
          color: Color.fromRGBO(250, 250, 250, 0.1),
        ),
        child: Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //Icon
            Container(
              padding: EdgeInsets.all(8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  color: Color.fromRGBO(0, 0, 0, 0.3),
                  child: Icon(
                    widget.item.icon,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            //Column
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 2),
                      height: 17,
                      child: Text(
                        widget.item.title,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white38,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                    Container(
                        child: SizedBox(
                      height: 24,
                      child: TextField(
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: widget.item.content,
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    )),
                  ],
                ),
              ),
            ),
            //icon
            Container(
              padding: EdgeInsets.all(8),
              child: Icon(
                Icons.edit,
                size: 16,
                color: Colors.white,
              ),
            ),
          ],
        ));
  }
}
