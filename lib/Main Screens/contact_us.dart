import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../UI Components/contact_container.dart';
import '../Utils/main_variables.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white, // <-- SEE HERE
        ),
        backgroundColor: HexColor(mainColor),
        title:  Text(
          "Contact Us",
          style: GoogleFonts.montserrat(
              color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const ContactContainer(
                  imagePath: "assets/Images/Abdeltawab.jpg",
                  name: "M. Abdeltawab",
                  email: "m.abdultawab2006@gmail.com",
                  phoneNumber: "0107200785",
                  qrPath: "assets/Images/qr-code.png"),
              const SizedBox(
                height: 30,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.asset("assets/Images/Cairo_University_Crest.png"),
                  ),

                  const SizedBox(
                    height: 90,
                  ),

                  SizedBox(
                    height: 150,
                    width: 150,
                    child: Image.asset("assets/Images/G logo.png"),
                  ),


                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
