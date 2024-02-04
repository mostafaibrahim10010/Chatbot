import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:stemchatbot/Chat%20Screen/Chatgpt/chatgpt_screen.dart';
import 'package:stemchatbot/LO%20Screens/LO%203/lo3_concepts.dart';
import 'package:stemchatbot/LO%20Screens/LO%204/lo4_concepts.dart';
import 'package:stemchatbot/UI%20Components/lo_container_widget.dart';
import '../Utils/main_variables.dart';
import 'LO 1/lo1_concepts.dart';
import 'LO 2/lo2_concepts.dart';

class LoScreen extends StatefulWidget {
  const LoScreen({Key? key}) : super(key: key);

  @override
  State<LoScreen> createState() => _LoScreenState();
}

class _LoScreenState extends State<LoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        title: Text(
          "LOs",
          style: GoogleFonts.montserrat(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: HexColor(mainColor),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              LoWidget(loNumber: "1", loScreen: Lo1Screen()),
              SizedBox(
                height: 10,
              ),
          LoWidget(loNumber: "2", loScreen: Lo2Screen()),
              SizedBox(
                height: 10,
              ),
          LoWidget(loNumber: "3", loScreen: Lo3Screen()),
              SizedBox(
                height: 10,
              ),
              LoWidget(loNumber: "4", loScreen: Lo4Screen()),
            ],
          ),
        ),
      ),
    );
  }
}
