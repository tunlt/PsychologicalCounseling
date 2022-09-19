import 'package:flutter/material.dart';

// import 'package:spa_booking/models/appointment.dart';
// import 'package:spa_booking/utils/constants.dart';
class UpcomingServiceBox extends StatelessWidget {
  // UpcomingServiceBox(this.bookingService);
  // BookingService bookingService;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      // onTap: () => _spaController.getSpaDetail(spa.id),
      child: Padding(
        padding: EdgeInsets.only(right: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width * 0.30,
                    height: size.width * 0.25,
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
                          "Tư vấn tâm lí",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              fontSize: 20),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          // "Address: " + service.spa.address,
                          "Time: " + "12:30" + " - " + "13:00",
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          // "Date: " + service.spa.address,
                          "Price: " + "5\$",
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
      ),
    );
  }
}
