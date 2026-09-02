import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:getx_application1/screens/home_page.dart";
import "package:getx_application1/screens/login/change_password.dart";
import "package:google_fonts/google_fonts.dart";
import "package:pinput/pinput.dart";


class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "OTP Verification",
          style: GoogleFonts.hindVadodara(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            letterSpacing: 0,
            color:Color.fromRGBO(255,255,255,1),
          ),
        ),
        backgroundColor: const Color.fromRGBO(216,58,80,1),
      ),

      body:SingleChildScrollView(child:
      SizedBox(
        height:800,
      child:
      Stack(
        children: [

          Positioned(
            top: 150,
            left: 96,
            //right: 0,
            child: Center(
              child: SvgPicture.asset(
                "assets/images/bro.svg",
                width: 237,
                height: 196.68,
                fit: BoxFit.contain,
              ),
            ),
          ),


          Positioned(
            top: 475,
            left: 27,
            width: 402,
            height:32,
            child: Text(
              "OTP Verification",
              style: GoogleFonts.hindVadodara(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                height: 1.0,
                letterSpacing: 0,
                color: Color.fromRGBO(216, 58, 80, 1),
              ),
            ),
          ),
          Positioned(
            top: 520,
            left: 27,
            height:15,
            width:387,
            child: Text(
              "Enter the OTP sent to +00-1234-657-3421",
              style: GoogleFonts.hindVadodara(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                height: 1.0,
                letterSpacing: 0,
                color:Color.fromRGBO(216, 58, 80, 1),
              ),
            ),
          ),
          Positioned(
            top: 551,
            left: 30,
            child: SizedBox(
              width: 355,
              height: 66,
              child: Pinput(
                length: 4,

                defaultPinTheme: PinTheme(
                  width: 76,
                  height: 66,
                  // textStyle: GoogleFonts.hindVadodara(
                  //   fontSize: 20,
                  //   fontWeight: FontWeight.w600,
                  // ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.red,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            top: 674,
            left: 24,
            child: SizedBox(
              width: 391,
              height: 47,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(216, 58, 80, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  "Submit",
                  style: GoogleFonts.hindVadodara(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.0,
                    letterSpacing: 0,
                    color:Color.fromRGBO(255,255,255,1),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 98,
            top: 774,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Didn’t receive the OTP? ",
                    style: GoogleFonts.hindVadodara(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(216, 58, 80, 1),
                      height: 1.0,
                      letterSpacing: 0,
                    ),
                  ),
                  TextSpan(
                    text: "Resend",
                    style: GoogleFonts.hindVadodara(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      height: 1.0,
                      letterSpacing: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      ),
      ),
    );
  }
}
