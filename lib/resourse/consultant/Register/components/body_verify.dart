import 'package:flutter/material.dart';

class BodyVerify extends StatefulWidget {
  BodyVerify({Key? key}) : super(key: key);

  @override
  _BodyVerifyState createState() => _BodyVerifyState();
}

class _BodyVerifyState extends State<BodyVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xfff7f6fb),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_back,
                    size: 32,
                    color: Colors.black54,
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                width: 200,
                height: 200,
                // decoration: BoxDecoration(
                //   color: Colors.deepPurple.shade50,
                // ),
                child: Image.asset(
                  'assets/zodiac/logo.png',
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                'Xác Minh Danh Tính',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Nhập mã code của bạn",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                width: 600,
                padding: EdgeInsets.all(28),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _textFieldNum(first: true, last: false),
                        _textFieldNum(first: false, last: false),
                        _textFieldNum(first: false, last: false),
                        _textFieldNum(first: false, last: true),
                      ],
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.purple),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(14.0),
                          child: Text(
                            'Gửi',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Bạn chưa nhận được mã code",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                "Gửi lại",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldNum({bool? first, last}) {
    return Container(
      height: 65,
      child: AspectRatio(
        aspectRatio: 1.0,
        child: TextField(
          autofocus: true,
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: false,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          keyboardType: TextInputType.number,
          maxLength: 1,
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1.5, color: Colors.black12),
                borderRadius: BorderRadius.circular(12)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 1.5, color: Colors.purple),
                borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
  // return Scaffold(
  //     backgroundColor: Colors.purple,
  //     body: Container(
  //       child: Center(
  //         child: Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceAround,
  //           mainAxisSize: MainAxisSize.max,
  //           children: [
  //             Container(
  //               height: 60,
  //               width: 60,
  //               child: TextField(
  //                 decoration: InputDecoration(
  //                     border: OutlineInputBorder(
  //                   borderRadius: BorderRadius.circular(20),
  //                 )),
  //               ),
  //             ),
  //             Container(
  //               height: 60,
  //               width: 60,
  //               child: TextField(
  //                 decoration: InputDecoration(
  //                   border: OutlineInputBorder(
  //                       borderRadius: BorderRadius.circular(20)),
  //                 ),
  //               ),
  //             ),
  //             Container(
  //               height: 60,
  //               width: 60,
  //               child: TextField(
  //                 decoration: InputDecoration(
  //                   border: OutlineInputBorder(
  //                       borderRadius: BorderRadius.circular(20)),
  //                 ),
  //               ),
  //             ),
  //             Container(
  //               height: 60,
  //               width: 60,
  //               child: TextField(
  //                 decoration: InputDecoration(
  //                   border: OutlineInputBorder(
  //                       borderRadius: BorderRadius.circular(20)),
  //                 ),
  //               ),
  //             )
  //           ],
  //         ),
  //       ),
  //     ));
}
