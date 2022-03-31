import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListSchedule extends StatefulWidget {
  const ListSchedule({Key? key}) : super(key: key);

  @override
  _ListScheduleState createState() => _ListScheduleState();
}

class _ListScheduleState extends State<ListSchedule> {
  List<Map<String, dynamic>> listActivity = [
    {
      "ActivityCategory": "Working",
      "ActivityCategoryColor": Color(0xFFBD46FE),
      "ActivityName": "Mobile App Design Research",
      "ActivityNameColor": Color(0xFF2A118C),
      "Icon": Icons.watch_later_sharp,
      "Action": Icons.more_vert,
      "Time": "09.00 am - 10.30 am",
      "BoxColor": const Color(0xFFF5F4FA),
      "SideColor": const Color(0xFF7765F1)
    },
    {
      "ActivityCategory": "Working",
      "ActivityCategoryColor": Color(0xFF4A90EF),
      "ActivityName": "Preparation for Mobile App Design",
      "ActivityNameColor": Color(0xFF2B4591),
      "Icon": Icons.watch_later_sharp,
      "Action": Icons.more_vert,
      "Time": "11.00 am - 01.45 pm",
      "BoxColor": const Color(0xFFF3F6FA),
      "SideColor": const Color(0xFF55A9FC)
    },
    {
      "ActivityCategory": "Break Time",
      "ActivityCategoryColor": Color(0xFF54BF81),
      "ActivityName": "Lunch & Rest",
      "ActivityNameColor": Color(0xFF3C7566),
      "Icon": Icons.watch_later_sharp,
      "Action": Icons.more_vert,
      "Time": "2.00 pm - 03.30 pm",
      "BoxColor": const Color(0xFFF1F8F5),
      "SideColor": const Color(0xFF4BD48A)
    },
    {
      "ActivityCategory": "Working",
      "ActivityCategoryColor": Color.fromARGB(255, 248, 138, 168),
      "ActivityName": "Finish Up the Project",
      "ActivityNameColor": Color.fromARGB(255, 239, 64, 111),
      "Icon": Icons.watch_later_sharp,
      "Action": Icons.more_vert,
      "Time": "04.15 pm - 04.45 pm",
      "BoxColor": const Color(0xFFFFECF0),
      "SideColor": const Color(0xFFE88788)
    },
  ];

  @override
  Widget build(BuildContext context) {
    double bodyHeight = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    double bodyWidth = MediaQuery.of(context).size.width;

    return Container(
      width: bodyWidth,
      height: bodyHeight * 0.648,
      child: ListView(
        children: listActivity.map((e) {
          return Card(
            elevation: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: bodyWidth * 0.5,
                height: bodyHeight * 0.2,
                padding: EdgeInsets.symmetric(horizontal: bodyWidth * 0.06),
                decoration: BoxDecoration(
                    color: e['BoxColor'],
                    border: Border(
                        left: BorderSide(color: e['SideColor'], width: 10))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${e['ActivityCategory']}",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: e['ActivityCategoryColor'])),
                        ),
                        Icon(e['Action'])
                      ],
                    ),
                    Text(
                      "${e['ActivityName']}",
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: e['ActivityNameColor'])),
                    ),
                    Row(
                      children: [
                        Icon(
                          e['Icon'],
                          color: Colors.grey,
                        ),
                        Text(
                          "  ${e['Time']}",
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
