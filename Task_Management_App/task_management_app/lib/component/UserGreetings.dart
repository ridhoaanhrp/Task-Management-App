import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserGreetings extends StatelessWidget {
  const UserGreetings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Hi, Pansy  ",
          style: GoogleFonts.montserrat(
              textStyle:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        ),
        Image.asset(
          "assets/emoteHand.png",
          scale: 3,
        )
      ],
    );
  }
}
