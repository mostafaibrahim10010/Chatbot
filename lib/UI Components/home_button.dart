import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../Utils/main_variables.dart';

class HomeButton extends StatelessWidget {
  const HomeButton(
      {Key? key,
      required this.iconPath,
      required this.title,
      required this.link})
      : super(key: key);

  final String iconPath;
  final String title;
  final String link;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 160,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.only(left: 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: Colors.white // Background color
            ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style:  GoogleFonts.montserrat(
                  color: HexColor(mainColor).withOpacity(0.9),
                  fontSize: 10,
                  fontWeight: FontWeight.bold)
            )
          ],
        ),
      ),
    );
  }
}
