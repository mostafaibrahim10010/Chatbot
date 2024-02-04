import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoButton extends StatelessWidget {
  const LoButton({Key? key,
    required this.text,
    required this.iconPath}) : super(key: key);
  final String text;
  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: 160,
      child: ElevatedButton(
        onPressed: () {
        },
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 120,
              width: 120,
              child: Image.asset(iconPath),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              text,
              style: GoogleFonts.montserrat(
                  color: Colors.grey,
                  fontSize: 8,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
