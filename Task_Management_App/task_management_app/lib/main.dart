import 'package:flutter/material.dart';
import 'package:task_management_app/DashBoardScreen.dart';
import 'package:task_management_app/ScheduleScreen.dart';
import 'package:task_management_app/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;
  final screens = [DashboardScreen(), ScheduleScreen()];
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: IndexedStack(
            index: selectedIndex,
            children: screens,
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xFF7E5BE3),
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: BottomAppBar(
              clipBehavior: Clip.antiAlias,
              shape: const CircularNotchedRectangle(),
              notchMargin: 5,
              child: BottomNavigationBar(
                  backgroundColor: const Color(0xFFFDFDFE),
                  currentIndex: selectedIndex,
                  selectedItemColor: const Color(0xFF7E5BE3),
                  showUnselectedLabels: false,
                  type: BottomNavigationBarType.fixed,
                  onTap: (index) => setState(() => selectedIndex = index),
                  items: const [
                    BottomNavigationBarItem(icon: Icon(Icons.home), label: "."),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.calendar_month), label: "."),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.folder), label: "."),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.person), label: "."),
                  ]),
            ),
          ),
        ),
      );
}
