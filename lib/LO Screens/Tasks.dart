import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import '../Utils/main_variables.dart';

class OneTaskScreen extends StatefulWidget {
  const OneTaskScreen({Key? key}) : super(key: key);

  @override
  State<OneTaskScreen> createState() => _OneTaskScreenState();
}

class _OneTaskScreenState extends State<OneTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white, // <-- SEE HERE
        ),
        title: Text(
          "LO3",
          style: GoogleFonts.montserrat(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: HexColor(mainColor),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 460,
                width: 350,
                decoration: BoxDecoration(
                  color: HexColor(mainColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "1- Write a Java code that can help the user to build an adventure game.",
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "2- Build an app that can identify if the user put the correct email and password",
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "3 - Develop a Calculator by using Java to help a high school students solve Mathematical problems",
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),

                    ],
                  ),

                ),
              ),

              const SizedBox(
                height: 50,
              ),


              GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) =>
                        const OneTaskScreen()));
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

            ],
          ),
        ),
      ),
    // SingleChildScrollView(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Container(
      //         height: 300,
      //         width: 300,
      //         decoration: BoxDecoration(
      //           color: HexColor(mainColor),
      //           borderRadius: BorderRadius.circular(8),
      //         ),
      //         child: Column(
      //           children: [
      //             Text(
      //               "1- Write a Java code that can help the user to build an adventure game, depending on the if condition.",
      //               style: GoogleFonts.montserrat(
      //                   color: Colors.white,
      //                   fontSize: 15,
      //                   fontWeight: FontWeight.bold),
      //             ),
      //             const SizedBox(
      //               height: 10,
      //             ),
      //             Text(
      //               "2- Build an app that can identify if the user put the correct email and password in the login screen.",
      //               style: GoogleFonts.montserrat(
      //                   color: Colors.white,
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold),
      //             ),
      //             const SizedBox(
      //               height: 10,
      //             ),
      //             Text(
      //               "3 - Develop a Calculator by using Java to help a high school students solve Mathematical problems in the Algorithms Session.",
      //               style: GoogleFonts.montserrat(
      //                   color: Colors.white,
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.bold),
      //             ),
      //             const SizedBox(
      //               height: 30,
      //             ),
      //             GestureDetector(
      //                 onTap: () {},
      //                 child: Container(
      //                   padding: const EdgeInsets.all(15),
      //                   margin: const EdgeInsets.symmetric(horizontal: 20),
      //                   decoration: BoxDecoration(
      //                     color: HexColor(mainColor),
      //                     borderRadius: BorderRadius.circular(8),
      //                   ),
      //                   child: Center(
      //                     child: Text(
      //                       "Submit",
      //                       style: GoogleFonts.montserrat(
      //                           color: Colors.white,
      //                           fontSize: 16,
      //                           fontWeight: FontWeight.bold),
      //                     ),
      //                   ),
      //                 )),
      //           ],
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
