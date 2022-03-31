import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_management_app/component/Calender.dart';
import 'package:task_management_app/component/ListSchedule.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({Key? key}) : super(key: key);

  @override
  _ScheduleScreenState createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  PageController pageController = PageController();
  int selectedPage = 1;
  void navBarTap(int index) {
    setState(() {
      selectedPage = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 300), curve: Curves.bounceOut);
    });
  }

  void pageChanged(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double bodyHeight = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    double bodyWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 85,
        leading: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Container(
            height: bodyHeight * 0.04,
            width: bodyWidth * 0.06,
            decoration: BoxDecoration(
                color: const Color(0xFF7E5BE3),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(99, 125, 91, 227),
                      blurRadius: 10,
                      spreadRadius: 1,
                      offset: Offset(0, 9))
                ]),
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
            ),
          ),
        ),
        title: const Text("Schedule"),
        titleTextStyle: GoogleFonts.montserrat(
            textStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: bodyWidth * 0.04),
          width: bodyWidth,
          height: bodyHeight,
          child: Column(children: [
            Calender(),
            SizedBox(
              height: bodyHeight * 0.02,
            ),
            ListSchedule()
          ]),
        ),
      )),
    );
  }
}
