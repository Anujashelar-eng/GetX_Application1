import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getx_application1/screens/login/otp_verification.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Change Password",
          style: GoogleFonts.hindVadodara(
            fontWeight: FontWeight.w600,
            color:Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
        backgroundColor: const Color.fromRGBO(216, 58, 80, 1),
      ),

      body:SingleChildScrollView( child:
          SizedBox(
            height:800,
            child:
      Stack(
        children: [

          Positioned(
            top: 188,
            left:96,
            child: Center(
              child: SvgPicture.asset(
                "assets/images/bro.svg",
                width: 237,
                height: 208,
                fit: BoxFit.contain,
              ),
            ),
          ),


          Positioned(
            top: 474,
            left: 27,
            child: Text(
              "OTP Verification",
              style: GoogleFonts.hindVadodara(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                height: 1.0,
                letterSpacing: 0,
                color: Color.fromRGBO(216, 58, 80, 1)
              ),
            ),
          ),
          Positioned(
            top: 520,
            left: 27,
            child: Text(
              "We will send you a one Time Password on this mobile number",
              style: GoogleFonts.hindVadodara(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                height: 1.0,
                letterSpacing: 0, color: Color.fromRGBO(216, 58, 80, 1)
              ),
            ),
          ),


          Positioned(
            top: 573,
            left: 24,
            child: Text(
              "Mobile Number",
              style: GoogleFonts.hindVadodara(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                height: 1.0,
                letterSpacing: 0, color: Color.fromRGBO(216, 58, 80, 1)
              ),
            ),
          ),


          Positioned(
            top: 600,
            left: 24,
            child: SizedBox(
              width: 391,
              height: 47,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      width: 1,
                      color: Color.fromRGBO(216, 58, 80, 1),
                    ),
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
                          builder: (context) => OtpVerification(),
                        ),

                    );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(216, 58, 80, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  "Get OTP",
                  style: GoogleFonts.hindVadodara(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    height: 1.0,
                    letterSpacing: 0,
                      color: Color.fromRGBO(255,255,255, 1)
                  ),
                ),
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