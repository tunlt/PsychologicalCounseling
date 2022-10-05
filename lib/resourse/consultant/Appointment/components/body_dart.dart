import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
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
  CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    // Service service=list.allService[0];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Cuộc hẹn sắp tới"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Card(
                child: TableCalendar(
                  focusedDay: DateTime.now(),
                  firstDay: DateTime.now(),
                  // firstDay: DateTime.now().subtract(Duration(days: 7)),
                  lastDay: DateTime.now().add(Duration(days: 30)),
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDay, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay =
                          focusedDay; // update `_focusedDay` here as well
                      print(_focusedDay);
                    });
                  },
                  calendarFormat: _calendarFormat,
                  onFormatChanged: (format) {
                    setState(() {
                      _calendarFormat = format;
                    });
                  },
                  onPageChanged: (focusedDay) {
                    _focusedDay = focusedDay;
                    print(_focusedDay);
                  },
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 190,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[50],
                          borderRadius: BorderRadius.circular(10)),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          "Thời gian: " +
                                              "12:30" +
                                              " - " +
                                              "13:00",
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
                                                            255, 109, 14, 96))),
                                            child: Text(
                                              "Gọi video",
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
                                                        Color.fromARGB(255, 110,
                                                            105, 108))),
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
                          ]),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 12),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 190,
                      width: 400,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple[50],
                          borderRadius: BorderRadius.circular(10)),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          "Thời gian: " +
                                              "12:30" +
                                              " - " +
                                              "13:00",
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
                                                            255, 109, 14, 96))),
                                            child: Text(
                                              "Gọi video",
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
                                                        Color.fromARGB(255, 110,
                                                            105, 108))),
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
                          ]),
                    ),
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
