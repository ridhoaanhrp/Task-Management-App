import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double bodyHeight = MediaQuery.of(context).size.height;
    double bodyWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        body: SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: bodyWidth * 0.1),
        height: bodyHeight,
        width: bodyWidth,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(
            height: bodyHeight * 0.15,
          ),
          Image.asset("assets/imageSplashScreen.png"),
          SizedBox(
            height: bodyHeight * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Taskdo",
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: Color(0xFF7E5BE3),
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
              ),
              const Icon(
                Icons.chat_bubble_outline_rounded,
                color: Color(0xFF7E5BE3),
              )
            ],
          ),
          SizedBox(
            height: bodyHeight * 0.03,
          ),
          Text(
            "Plan what you will do to be more organized for today, tomorrow and beyond",
            style: GoogleFonts.montserrat(
                textStyle: const TextStyle(fontSize: 16)),
            textAlign: TextAlign.center,
            maxLines: 3,
          ),
          SizedBox(
            height: bodyHeight * 0.1,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                shadowColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 125, 91, 227),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color(0xFF7E5BE3),
                )),
            child: Container(
              width: bodyWidth * 0.7,
              height: bodyHeight * 0.06,
              child: Center(
                child: Text(
                  "Login",
                  style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w600)),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "Sign Up",
                style: GoogleFonts.montserrat(
                    color: Color(0xFF7E5BE3),
                    textStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600)),
              ))
        ]),
      ),
    ));
  }
}
