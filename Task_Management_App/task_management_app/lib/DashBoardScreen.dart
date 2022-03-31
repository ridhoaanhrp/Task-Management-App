import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_management_app/component/Progress.dart';
import 'package:task_management_app/component/SearchBox.dart';
import 'package:task_management_app/component/ToDo.dart';
import 'package:task_management_app/component/UserGreetings.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  PageController pageController = PageController();
  int selectedPage = 0;
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/iconHamburger.png",
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Container(
              height: 40,
              width: 45,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/avatar.png"),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
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
              const UserGreetings(),
              SizedBox(
                height: bodyHeight * 0.02,
              ),
              const SearchBox(),
              SizedBox(
                height: bodyHeight * 0.02,
              ),
              const Progress(),
              SizedBox(
                height: bodyHeight * 0.02,
              ),
              const ToDo(),
            ]),
          ),
        ),
      ),
    );
  }
}
