import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:stemchatbot/Lo%20screens/lo1_screen.dart';
import '../Utils/main_variables.dart';

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
          color: Colors.white, // <-- SEE HERE
        ),
        title: Text(
          "LOs",
          style: GoogleFonts.montserrat(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: HexColor(mainColor),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 200,
                  width: 340,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: const AssetImage("assets/Images/Mobile-App-Development_Blog-scaled.jpeg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            HexColor(mainColor).withOpacity(0.8),
                            BlendMode.darken)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15,),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(
                                height: 50,
                                width: 50,
                                child:
                                Image.asset("assets/Images/no-back.png")),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Learning Outcome (LO) 1",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "We are ready to answers all your questions.",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 9,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: SizedBox(
                            height: 40,
                            width: 180,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    backgroundColor:
                                    Colors.white // Background color
                                ),
                                onPressed: () {
                                  // Navigator.of(context).push(MaterialPageRoute(
                                  //     builder: (BuildContext context) =>
                                  //         const ResultsView()));
                                },
                                child: Text(
                                  "Ask Us",
                                  style: GoogleFonts.montserrat(
                                      color: HexColor(mainColor),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 200,
                  width: 340,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: const AssetImage("assets/Images/Mobile-App-Development_Blog-scaled.jpeg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            HexColor(mainColor).withOpacity(0.8),
                            BlendMode.darken)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(
                                height: 50,
                                width: 50,
                                child:
                                Image.asset("assets/Images/no-back.png")),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Learning Outcome (LO) 2",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "We are ready to answers all your questions.",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 9,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: SizedBox(
                            height: 40,
                            width: 180,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    backgroundColor:
                                    Colors.white // Background color
                                ),
                                onPressed: () {
                                  // Navigator.of(context).push(MaterialPageRoute(
                                  //     builder: (BuildContext context) =>
                                  //         const ResultsView()));
                                },
                                child: Text(
                                  "Ask Us",
                                  style: GoogleFonts.montserrat(
                                      color: HexColor(mainColor),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 200,
                  width: 340,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: const AssetImage("assets/Images/Mobile-App-Development_Blog-scaled.jpeg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            HexColor(mainColor).withOpacity(0.8),
                            BlendMode.darken)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(
                                height: 50,
                                width: 50,
                                child:
                                Image.asset("assets/Images/no-back.png")),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Learning Outcome (LO) 3",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "We are ready to answers all your questions.",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 9,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: SizedBox(
                            height: 40,
                            width: 180,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    backgroundColor:
                                    Colors.white // Background color
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                      const OneScreen()));
                                },
                                child: Text(
                                  "Ask Us",
                                  style: GoogleFonts.montserrat(
                                      color: HexColor(mainColor),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        )
                      ],
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 200,
                  width: 340,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                        image: const AssetImage("assets/Images/Mobile-App-Development_Blog-scaled.jpeg"),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            HexColor(mainColor).withOpacity(0.8),
                            BlendMode.darken)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(
                                height: 50,
                                width: 50,
                                child:
                                Image.asset("assets/Images/no-back.png")),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Learning Outcome (LO) 4",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "We are ready to answers all your questions.",
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 9,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Center(
                          child: SizedBox(
                            height: 40,
                            width: 180,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    backgroundColor:
                                    Colors.white // Background color
                                ),
                                onPressed: () {
                                  // Navigator.of(context).push(MaterialPageRoute(
                                  //     builder: (BuildContext context) =>
                                  //         const ResultsView()));
                                },
                                child: Text(
                                  "Ask Us",
                                  style: GoogleFonts.montserrat(
                                      color: HexColor(mainColor),
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                )),
                          ),
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
