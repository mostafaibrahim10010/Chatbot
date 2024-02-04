import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:stemchatbot/UI%20Components/lo_button.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;
import '../../Utils/main_variables.dart';


class Lo4TasksScreen extends StatefulWidget {
  const Lo4TasksScreen({Key? key}) : super(key: key);

  @override
  State<Lo4TasksScreen> createState() => _Lo4TasksScreenState();
}

class _Lo4TasksScreenState extends State<Lo4TasksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("d3d3d3"),
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        backgroundColor: HexColor(mainColor),
        title: Text(
          "LO1 Task",
          style: GoogleFonts.montserrat(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
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
                              LoButton(text: "Develop an adventure game that restart after finishing", iconPath: "assets/Images/LO Icons/Tasks/code.png"),
                              SizedBox(
                                width: 15,
                              ),
                              LoButton(text: "Build Password Strength Checker", iconPath: "assets/Images/LO Icons/Tasks/programming.png"),
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
                LoButton(text: "Build a library book tracker", iconPath: "assets/Images/LO Icons/Tasks/programming cs.png"),
                SizedBox(
                  width: 15,
                ),
                LoButton(text: "Build a Factorial Calculator", iconPath: "assets/Images/LO Icons/Tasks/programming-language.png")
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
                onTap: (){
                  launcher.launchUrl(
                    Uri.parse("https://forms.gle/7gukfj7JoVHeCBFi7"),
                    mode: launcher.LaunchMode.externalApplication,
                  );
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
                      "Submit",
                      style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
