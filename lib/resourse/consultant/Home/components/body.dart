import 'package:astrology/resourse/consultant/components/bottombar_consultant.dart';
import 'package:astrology/resourse/consultant/components/navigation_bottom.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.purple[600],
        backgroundColor: Colors.purple[200],
        leading: Container(
            height: 100,
            width: 100,
            child: Image.asset('assets/zodiac/logo1.png')),
        actions: [],
      ),
      body: Container(
        color: Colors.purple,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: Container(
                      height: 170,
                      width: 170,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://upanh123.com/wp-content/uploads/2020/11/hinh-anh-anime-chibi-girl5.jpg'),
                        backgroundColor: Colors.purple[50],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(5),
                          gradient: new LinearGradient(
                              colors: [
                                Color.fromARGB(255, 238, 148, 218),
                                Color.fromARGB(255, 255, 255, 255)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.live_tv_outlined, color: Colors.red),
                          iconSize: 75,
                        ),
                      ),
                      Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(5),
                          gradient: new LinearGradient(
                              colors: [
                                Color.fromARGB(255, 48, 97, 233),
                                Color.fromARGB(255, 255, 255, 255)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.chat_bubble_outline_sharp,
                            color: Colors.white,
                          ),
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
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(5),
                          gradient: new LinearGradient(
                              colors: [
                                Color.fromARGB(255, 238, 148, 218),
                                Color.fromARGB(255, 255, 255, 255)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.shopify_outlined, color: Colors.red),
                          iconSize: 75,
                        ),
                      ),
                      Container(
                        height: 130,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(5),
                          gradient: new LinearGradient(
                              colors: [
                                Color.fromARGB(255, 238, 148, 218),
                                Color.fromARGB(255, 255, 255, 255)
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.calendar_today,
                            color: Color.fromARGB(255, 24, 228, 17),
                          ),
                          iconSize: 75,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBarPsycApp(),
    );
  }
}
