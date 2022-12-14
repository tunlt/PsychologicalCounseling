import 'package:astrology/resourse/Login&register/login.dart';
import 'package:astrology/resourse/consultant/controller/register_consultant.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:astrology/resourse/consultant/common/themhelper.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  DateTime selectedDate = DateTime.now();
  final format = DateFormat("yyyy-MM-dd");
  TextEditingController emailController = TextEditingController();
  TextEditingController fullnameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController? genderController = TextEditingController();

  // var genderController = "male";

  final RegisterController _controller = Get.find<RegisterController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: const BoxConstraints.expand(),
        color: Colors.purple[200],
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 5),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/zodiac/logo.png",
                          ),
                          fit: BoxFit.contain)),
                  height: MediaQuery.of(context).size.height * .15,
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Text(
                  "T???o m???i m???t chuy??n vi??n t?? v???n!",
                  style: TextStyle(
                      color: Color.fromARGB(255, 92, 4, 107),
                      fontSize: 24,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: TextField(
                  controller: emailController,
                  decoration: ThemeHelper()
                      .textInputDecoration("Email", "Nh???p v??o email... "),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: TextField(
                  controller: fullnameController,
                  decoration: ThemeHelper()
                      .textInputDecoration("H??? v?? T??n", "Nh???p h??? v?? t??n... "),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: TextField(
                  controller: usernameController,
                  decoration: ThemeHelper().textInputDecoration(
                      "T??n t??i kho???n", "Nh???p t??n t??i kho???n... "),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: TextField(
                  controller: passwordController,
                  decoration: ThemeHelper().textInputPasswordDecoration(
                      "M???t Kh???u", "Nh???p v??o m???t kh???u"),
                  obscureText: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: TextField(
                  controller: addressController,
                  decoration: ThemeHelper()
                      .textInputDecoration("?????a Ch???", "Nh???p v??o ?????a ch???... "),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: TextField(
                  controller: phoneController,
                  decoration: ThemeHelper().textInputDecoration(
                      "S??? ??i???n tho???i", "Nh???p v??o s??? ??i???n tho???i... "),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Column(children: <Widget>[
                  Text('Ng??y Sinh (${format.pattern})'),
                  DateTimeField(
                    controller: dobController,
                    format: format,
                    onShowPicker: (context, currentValue) {
                      return showDatePicker(
                          context: context,
                          firstDate: DateTime(1900),
                          initialDate: currentValue ?? DateTime.now(),
                          lastDate: DateTime(2100));
                    },
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(130, 0, 0, 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.pink[800]),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(
                          color: Colors.white,
                          width: 0.5,
                        ),
                      ),
                    ),
                  ),
                  child: Text('T???o t??i kho???n'),
                  onPressed: () => _controller.addRegister(
                      emailController,
                      fullnameController,
                      usernameController,
                      passwordController,
                      addressController,
                      genderController,
                      dobController,
                      phoneController),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Container(
                    height: 130,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(40, 10, 0, 30),
                          child: Text.rich(TextSpan(children: [
                            const TextSpan(
                                text: "B???n ???? c?? t??i kho???n!? ",
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 16)),
                            TextSpan(
                                text: "????ng nh???p ngay!",
                                style: const TextStyle(
                                    color: Colors.blueAccent,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return LoginPage(); //Routing Home Page in here
                                    }));
                                  }),
                          ])),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
