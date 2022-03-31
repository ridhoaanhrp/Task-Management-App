import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToDo extends StatefulWidget {
  const ToDo({Key? key}) : super(key: key);

  @override
  _ToDoState createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
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
              "Todo List",
              style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "View All",
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: Color(0xFF7E5BE3), fontSize: 12)),
              ),
            )
          ],
        ),
        Container(
          width: bodyWidth,
          height: bodyHeight * 0.4,
          child: ListView(
            children: [
              ListTile(
                leading: Container(
                  height: bodyHeight * 0.07,
                  width: bodyWidth * 0.135,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [Color(0xFF2ED187), Color(0xFF49DC9A)],
                          begin: Alignment.bottomRight,
                          end: Alignment.topLeft),
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Icons.brush,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Mobile App Design",
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500)),
                ),
                subtitle: Text(
                  "2 Completed",
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400)),
                ),
                trailing: Container(
                  width: bodyWidth * 0.06,
                  height: bodyHeight * 0.034,
                  decoration: BoxDecoration(
                      color: Color(0xFFE9FAF3),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "4",
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              fontSize: 12,
                              color: Color(0xFF56D89E),
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Container(
                    height: bodyHeight * 0.07,
                    width: bodyWidth * 0.135,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Color(0xFF5052B2), Color(0xFF6467CA)],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      "assets/iconFlowTree.png",
                      color: Colors.white,
                    )),
                title: Text(
                  "H. Fidelity Wireframe",
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500)),
                ),
                subtitle: Text(
                  "4 Completed",
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400)),
                ),
                trailing: Container(
                  width: bodyWidth * 0.06,
                  height: bodyHeight * 0.034,
                  decoration: BoxDecoration(
                      color: Color(0xFFF0F0FA),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "6",
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              fontSize: 12,
                              color: Color(0xFF9597CE),
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Container(
                    height: bodyHeight * 0.07,
                    width: bodyWidth * 0.135,
                    decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Color(0xFFFF5071), Color(0xFFFF738E)],
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft),
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(
                      "assets/iconMagic.png",
                      color: Colors.white,
                    )),
                title: Text(
                  "Visual Design",
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500)),
                ),
                subtitle: Text(
                  "1 Completed",
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                          fontWeight: FontWeight.w400)),
                ),
                trailing: Container(
                  width: bodyWidth * 0.06,
                  height: bodyHeight * 0.034,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFECF0),
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: Text(
                      "7",
                      style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              fontSize: 12,
                              color: Color(0xFFFF708B),
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
