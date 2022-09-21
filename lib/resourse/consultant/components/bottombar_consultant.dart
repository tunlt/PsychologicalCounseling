import 'package:astrology/resourse/consultant/Appointment/appointment_screen.dart';
import 'package:astrology/resourse/consultant/Home/home_screen.dart';
import 'package:flutter/material.dart';

class BottomBarPsycApp extends StatelessWidget {
  String selected = "";
  Color colorSelected = Colors.white;
  Color colorNormal = Color.fromRGBO(87, 79, 79, 1);
  // BottomBarSpaApp({required this.selected});
  // final AppointmentController appointmentController =
  //     Get.find<AppointmentController>();
  // final SpaController spaController = Get.find<SpaController>();
  // final LoginController loginController = Get.find<LoginController>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: 5, bottom: 0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.purple,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), topLeft: Radius.circular(10)),
        ),
        // decoration: BoxDecoration(
        //     // borderRadius: BorderRadius.only(topRight: Radius.circular(0.5)),
        //     ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (selected == "home")
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return HomeScreenConsultant();
                    },
                  ));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.home))
                  ],
                ),
              )
            else
              GestureDetector(
                // onTap: () => spaController.getSpa(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.home))
                  ],
                ),
              ),
            //=============================================================APPOINTMENT
            if (selected == "appointment")
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return AppointmentScreen();
                    },
                  ));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.calendar_today))
                  ],
                ),
              )
            else
              GestureDetector(
                // onTap: () => appointmentController.getBookingServices(),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.calendar_month)),
                    // Text(
                    //   "Appointment",
                    //   style: TextStyle(fontSize: 12, color: Colors.black45),
                    // )
                  ],
                ),
              ),
            //=============================================================SEARCH
            if (selected == "search")
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return AppointmentScreen();
                    },
                  ));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.history))
                  ],
                ),
              )
            else
              GestureDetector(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return AppointmentScreen(finished: true);
                  // },));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.history))
                  ],
                ),
              ),
            if (selected == "search")
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return AppointmentScreen();
                    },
                  ));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.history),
                    )
                  ],
                ),
              )
            else
              GestureDetector(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return AppointmentScreen(finished: true);
                  // },));
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.manage_accounts))
                  ],
                ),
              ),
            // //=============================================================TREATMENT
            // if(selected == "treatment")
            //   IconButton(
            //     onPressed: () {
            //       Navigator.push(context, MaterialPageRoute(
            //         builder: (context) {
            //           return MainScreen();
            //         },
            //       ));
            //     },
            //     icon: Image.asset("assets/icons/treatment.png",color: colorSelected,),
            //     iconSize: size.width * 0.09,
            //   )
            // else
            //   IconButton(
            //     onPressed: () {
            //       Navigator.push(context, MaterialPageRoute(
            //         builder: (context) {
            //           return MainScreen();
            //         },
            //       ));
            //     },
            //     icon: Image.asset("assets/icons/treatment.png", color: colorNormal,),
            //     iconSize: size.width * 0.09,
            //   )
            // ,
            //=============================================================
            // if (selected == "Logout")
            //   GestureDetector(
            //     onTap: () {
            //       Navigator.push(context, MaterialPageRoute(
            //         builder: (context) {
            //           return MainScreen();
            //         },
            //       ));
            //     },
            //     child: Column(
            //       mainAxisSize: MainAxisSize.min,
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       children: [
            //         Image.asset(
            //           "assets/icons/profile.png",
            //           color: Colors.white,
            //           width: size.width * 0.09,
            //         ),
            //         Text(
            //           "Logout",
            //           style: TextStyle(fontSize: 12, color: Colors.white),
            //         )
            //       ],
            //     ),
            //   )
            // else
            //   GestureDetector(
            //     onTap: () => loginController.logout(),
            //     child: Column(
            //       mainAxisSize: MainAxisSize.min,
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       children: [
            //         Image.asset(
            //           "assets/icons/profile.png",
            //           color: Colors.black45,
            //           width: size.width * 0.09,
            //         ),
            //         Text(
            //           "Logout",
            //           style: TextStyle(fontSize: 12, color: Colors.black45),
            //         )
            //       ],
            //     ),
            //   )
          ],
        ),
      ),
    );
  }
}
