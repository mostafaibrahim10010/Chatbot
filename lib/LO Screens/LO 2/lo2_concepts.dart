import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:stemchatbot/UI%20Components/lo_button.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;
import '../../Utils/main_variables.dart';
import 'lo2_tasks.dart';

class Lo2Screen extends StatefulWidget {
  const Lo2Screen({Key? key}) : super(key: key);

  @override
  State<Lo2Screen> createState() => _Lo2ScreenState();
}

class _Lo2ScreenState extends State<Lo2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("d3d3d3"),
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white, // <-- SEE HERE
        ),
        backgroundColor: HexColor(mainColor),
        title: Text(
          "LO2 Content",
          style: GoogleFonts.montserrat(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: SizedBox(
        height: 60,
        width: 60,
        child: FloatingActionButton(
          backgroundColor: HexColor(mainColor),
          onPressed: () {
            launcher.launchUrl(
              Uri.parse("https://t.me/learning_outcome_2_bot"),
              mode: launcher.LaunchMode.externalApplication,
            );
          },
          child: const Icon(Icons.chat, color: Colors.white,),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 410,
              color: HexColor(mainColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Welcome!",
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 45,
                          width: 330,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 10, right: 10, top: 10),
                            child: Text(
                              "Fuel your day with programming",
                              style: GoogleFonts.montserrat(
                                  color: HexColor(mainColor),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, right: 10),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              LoButton( text: "Programming Language Java", iconPath: "assets/Images/LO Icons/Concepts/code.png"),
                              SizedBox(
                                width: 15,
                              ),
                              LoButton(text: "Event-driven Programming", iconPath: "assets/Images/LO Icons/Concepts/cs.png"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LoButton(text: "Creating and Calling Methods", iconPath: "assets/Images/LO Icons/Concepts/data.png"),
                SizedBox(
                  width: 15,
                ),
                LoButton(text: "Initializing, Debugger and errors..", iconPath: "assets/Images/LO Icons/Concepts/programming.png")
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                      const Lo2TasksScreen()));
                },
                child: Container(
                  padding: const EdgeInsets.all(15),
                  margin:
                  const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: HexColor(mainColor),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text(
                      "Tasks",
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
