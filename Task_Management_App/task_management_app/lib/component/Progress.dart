import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:avatar_stack/avatar_stack.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Progress extends StatefulWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  _ProgressState createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  @override
  Widget build(BuildContext context) {
    double bodyHeight = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    double bodyWidth = MediaQuery.of(context).size.width;

    return Container(
      width: bodyWidth,
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "In Progress",
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "See All",
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: Color(0xFF7E5BE3), fontSize: 12)),
              ),
            )
          ],
        ),
        Container(
          width: bodyWidth,
          height: bodyHeight * 0.2,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Card(
                elevation: 0,
                child: Container(
                  height: bodyHeight * 0.1,
                  width: bodyWidth * 0.6,
                  padding: EdgeInsets.symmetric(
                      horizontal: bodyWidth * 0.03,
                      vertical: bodyHeight * 0.01),
                  decoration: BoxDecoration(
                      gradient: const RadialGradient(
                          colors: [Color(0xFF717BE9), Color(0xFF8086ED)]),
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Landing Page Design",
                              style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                            const Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            )
                          ],
                        ),
                        Text(
                          "Task for Team Marvel",
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  fontSize: 11,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: bodyHeight * 0.01),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AvatarStack(
                                avatars: [
                                  for (var n = 0; n < 5; n++)
                                    NetworkImage(
                                        'https://i.pravatar.cc/20?img=$n')
                                ],
                                height: bodyHeight * 0.04,
                                width: bodyWidth * 0.3,
                              ),
                              Column(
                                children: [
                                  Row(children: [
                                    const Icon(
                                      Icons.watch_later_sharp,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: bodyWidth * 0.01,
                                    ),
                                    Text(
                                      "4 Hours",
                                      style: GoogleFonts.montserrat(
                                          textStyle: const TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500)),
                                    )
                                  ]),
                                  SizedBox(
                                    height: bodyHeight * 0.01,
                                  ),
                                  Row(children: [
                                    const Icon(
                                      Icons.assignment,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: bodyWidth * 0.01,
                                    ),
                                    Text(
                                      "8 Tasks",
                                      style: GoogleFonts.montserrat(
                                          textStyle: const TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500)),
                                    )
                                  ])
                                ],
                              )
                            ],
                          ),
                        ),
                        Text(
                          "In Progress (40%)",
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: bodyHeight * 0.01),
                          child: LinearPercentIndicator(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 0),
                            width: bodyWidth * 0.52,
                            lineHeight: bodyHeight * 0.01,
                            barRadius: Radius.circular(10),
                            percent: 0.4,
                            progressColor: Color(0xFF424ED1),
                          ),
                        )
                      ]),
                ),
              ),
              Card(
                elevation: 0,
                child: Container(
                  height: bodyHeight * 0.1,
                  width: bodyWidth * 0.6,
                  padding: EdgeInsets.symmetric(
                      horizontal: bodyWidth * 0.03,
                      vertical: bodyHeight * 0.01),
                  decoration: BoxDecoration(
                      gradient: RadialGradient(
                          colors: [Color(0xFFE88788), Color(0xFFE78485)]),
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Dashboard Page Design",
                              style: GoogleFonts.montserrat(
                                  textStyle: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            ),
                            const Icon(
                              Icons.more_vert,
                              color: Colors.white,
                            )
                          ],
                        ),
                        Text(
                          "Task for Team Beta",
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  fontSize: 11,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: bodyHeight * 0.01),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              AvatarStack(
                                avatars: [
                                  for (var n = 0; n < 5; n++)
                                    NetworkImage(
                                        'https://i.pravatar.cc/20?img=$n')
                                ],
                                height: bodyHeight * 0.04,
                                width: bodyWidth * 0.3,
                              ),
                              Column(
                                children: [
                                  Row(children: [
                                    const Icon(
                                      Icons.watch_later_sharp,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: bodyWidth * 0.01,
                                    ),
                                    Text(
                                      "9 Hours",
                                      style: GoogleFonts.montserrat(
                                          textStyle: const TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500)),
                                    )
                                  ]),
                                  SizedBox(
                                    height: bodyHeight * 0.01,
                                  ),
                                  Row(children: [
                                    const Icon(
                                      Icons.assignment,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: bodyWidth * 0.01,
                                    ),
                                    Text(
                                      "12 Tasks",
                                      style: GoogleFonts.montserrat(
                                          textStyle: const TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500)),
                                    )
                                  ])
                                ],
                              )
                            ],
                          ),
                        ),
                        Text(
                          "In Progress (20%)",
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: bodyHeight * 0.01),
                          child: LinearPercentIndicator(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(horizontal: 0),
                            width: bodyWidth * 0.52,
                            lineHeight: bodyHeight * 0.01,
                            barRadius: Radius.circular(10),
                            percent: 0.2,
                            progressColor: Color(0xFFCE5A5B),
                          ),
                        )
                      ]),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
