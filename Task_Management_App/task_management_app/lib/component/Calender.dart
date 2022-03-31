import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Calender extends StatefulWidget {
  const Calender({Key? key}) : super(key: key);

  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  @override
  Widget build(BuildContext context) {
    double bodyHeight = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    double bodyWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(top: bodyHeight * 0.05),
      child: Container(
        width: bodyWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Today",
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey)),
            ),
            SizedBox(
              height: bodyHeight * 0.02,
            ),
            Row(
              children: [
                Icon(Icons.calendar_month),
                Text(
                  " Thursday, 31 March",
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                )
              ],
            ),
            SizedBox(
              height: bodyHeight * 0.02,
            ),
            Container(
              width: bodyWidth,
              height: bodyHeight * 0.1,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                buildDateMethod(bodyWidth, "Thu", 31, true),
                buildDateMethod(bodyWidth, "Fri", 1, false),
                buildDateMethod(bodyWidth, "Sat", 2, false),
                buildDateMethod(bodyWidth, "Sun", 3, false),
                buildDateMethod(bodyWidth, "Mon", 4, false),
                buildDateMethod(bodyWidth, "Tue", 5, false),
                buildDateMethod(bodyWidth, "Wed", 6, false),
              ]),
            )
          ],
        ),
      ),
    );
  }

  Card buildDateMethod(
      double bodyWidth, String weekday, int date, bool isActive) {
    return Card(
      elevation: 0,
      child: Container(
        width: bodyWidth * 0.13,
        decoration: isActive
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xFF7E5BE3))
            : BoxDecoration(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              date.toString(),
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: isActive ? Colors.white : Colors.black)),
            ),
            Text(
              weekday,
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: isActive ? Colors.white : Colors.black)),
            )
          ],
        ),
      ),
    );
  }
}
