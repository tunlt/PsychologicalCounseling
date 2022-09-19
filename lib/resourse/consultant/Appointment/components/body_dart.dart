import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:flutter/material.dart';
// import 'package:spa_booking/Screens/Appointment/components/history.dart';
// import 'package:spa_booking/Screens/Appointment/components/upcoming.dart';
// import 'package:spa_booking/controller/appointment.dart';
// import 'package:spa_booking/models/appointment.dart';

// import 'package:get/get.dart';
class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _Body();
  }
}

class _Body extends State<Body> {
  // final SpaController _spaController = Get.find<SpaController>();
  // final AppointmentController _appointmentController = Get.find<AppointmentController>();
  // late final BookingService bookingservice;
  @override
  Widget build(BuildContext context) {
    // Service service=list.allService[0];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CalendarAppBar(
        onDateChanged: (value) => print(value),
        lastDate: DateTime.now().add(Duration(days: 30)),
        // selectedDate: DateTime.now().add(Duration(days: 5)),
        firstDate: DateTime.now(),
        white: Colors.white,
        events: List.generate(
            10, (index) => DateTime.now().subtract(Duration(days: index * 2))),
        locale: 'en',
      ),
      body: Container(
        child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                      color: Colors.purple[200],
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Cuộc hẹn sắp tới',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26,
                                  color: Colors.purple),
                            ),
                          )
                        ],
                      )),
                  // Container(
                  //           padding: EdgeInsets.all(10),
                  //           height: MediaQuery.of(context).size.height * 0.35,
                  //           child: GetBuilder<AppointmentController>(
                  //             builder: (controller) => (controller.isLoading.isTrue)
                  //                 ? const Center(child: CircularProgressIndicator())
                  //                 : controller.listBookingServicesIsfalse.isEmpty
                  //                     ? const Center(child: Text('chưa có booking nào!'))
                  //                     : ListView.builder(
                  //                         shrinkWrap: true,
                  //                         scrollDirection: Axis.vertical,
                  //                         itemBuilder: (ctx, i) =>
                  //                             UpcomingServiceBox(_appointmentController.listBookingServicesIsfalse[i]),
                  //                         itemCount: controller.listBookingServicesIsfalse.length,
                  //                       ),
                  //           ),
                  //         ),
                  Container(
                    padding: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height * 0.35,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 10, bottom: 5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: size.width * 0.30,
                                height: size.width * 0.35,
                                child: Image.network(
                                    'https://upanh123.com/wp-content/uploads/2020/11/hinh-anh-anime-chibi-girl5.jpg'),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: size.width * 0.45,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Tư vấn tình cảm",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      // "Address: " + service.spa.address,
                                      "Tên: " + "Nguyễn Lâm Thanh Tú",
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    Text(
                                      // "Address: " + service.spa.address,
                                      "Thời gian: " + "12:30" + " - " + "13:00",
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      // "Date: " + service.spa.address,
                                      "Giá: " + "50.000" + "VND",
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Container(
                                      width: 120,
                                      height: 22,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Color.fromARGB(
                                                        255, 165, 8, 170))),
                                        child: Text(
                                          "Chi Tiết",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 120,
                                      height: 22,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Color.fromARGB(
                                                        255, 110, 105, 108))),
                                        child: Text(
                                          "Hủy",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    //     // UpcomingServiceBox(bookingService: BookingService(service.name, service.rate, service.price,service.cateType,service.sale,service.spa)),
                    //   SizedBox(height: 12,),
                    //   Text(
                    //     "Appointments History",
                    //     style: TextStyle(
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: 18,
                    //     ),
                    //   ),
                    //   SizedBox(height: 15,),

                    //  Container(
                    //             padding: EdgeInsets.all(10),
                    //             height: MediaQuery.of(context).size.height * 0.35,
                    //             child: GetBuilder<AppointmentController>(
                    //               builder: (controller) => (controller.isLoading.isTrue)
                    //                   ? const Center(child: CircularProgressIndicator())
                    //                   : controller.listBookingServices.isEmpty
                    //                       ? const Center(child: Text('chưa có booking nào!'))
                    //                       : ListView.builder(
                    //                           shrinkWrap: true,
                    //                           scrollDirection: Axis.vertical,
                    //                           itemBuilder: (ctx, i) =>
                    //                               HistoryServiceBox(_appointmentController.listBookingServices[i]),
                    //                           itemCount: controller.listBookingServices.length,
                    //                         ),
                    //             ),
                    //           ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
