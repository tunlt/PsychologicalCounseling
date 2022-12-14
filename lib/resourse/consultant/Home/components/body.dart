import 'package:astrology/resourse/consultant/Schedule/schedule_screen.dart';
import 'package:astrology/resourse/consultant/components/bottombar_consultant.dart';
import 'package:astrology/resourse/consultant/components/navigation_bottom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 30, 1, 36),
      // appBar: AppBar(
      //   shadowColor: Colors.purple[600],
      //   backgroundColor: Colors.purple[200],
      //   leading: Container(
      //       height: 100,
      //       width: 100,
      //       child: Image.asset('assets/zodiac/logo1.png')),
      //   actions: [],
      // ),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: new LinearGradient(colors: [
            Color.fromARGB(255, 71, 43, 80),
            Color.fromARGB(255, 28, 5, 41)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: Container(
                      height: 150,
                      width: 150,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage("assets/zodiac/logo1.png"),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2),
                child: Center(
                    child: Text(
                  "Psychological",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white.withOpacity(0.6)),
                )),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 50),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            height: 180,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.99),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 112, 93, 82),
                                  blurRadius: 4,
                                  offset: Offset(1.5, 1.5), // Shadow position
                                ),
                              ],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Image.asset("assets/icon/live.png"),
                              iconSize: 75,
                            ),
                          ),
                          Container(
                            height: 180,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.99),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 112, 93, 82),
                                  blurRadius: 4,
                                  offset: Offset(1.5, 1.5), // Shadow position
                                ),
                              ],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon:
                                  Image.asset("assets/icon/messages_icon.png"),
                              iconSize: 75,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            height: 180,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.99),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 112, 93, 82),
                                  blurRadius: 4,
                                  offset: Offset(1.5, 1.5), // Shadow position
                                ),
                              ],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: IconButton(
                              onPressed: () {
                                Get.to(ScheduleScreen());
                              },
                              icon:
                                  Image.asset("assets/icon/schedule_icon.png"),
                              iconSize: 75,
                            ),
                          ),
                          Container(
                            height: 180,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.99),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 112, 93, 82),
                                  blurRadius: 4,
                                  offset: Offset(1.5, 1.5), // Shadow position
                                ),
                              ],
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: IconButton(
                              onPressed: () {},
                              icon: Image.asset("assets/icon/shop-icon.png"),
                              iconSize: 75,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
