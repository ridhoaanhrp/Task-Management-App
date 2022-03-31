import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyHeight = MediaQuery.of(context).size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    double bodyWidth = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        width: bodyWidth * 0.9,
        child: TextField(
          decoration: InputDecoration(
              fillColor: Color(0xFFFBFAFF),
              filled: true,
              hintText: "Search for task",
              prefixIcon: const Icon(Icons.search),
              suffixIcon: Container(
                height: bodyHeight * 0.05,
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
                  Icons.filter_alt_sharp,
                  color: Colors.white,
                ),
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none)),
        ),
      ),
    );
  }
}
