import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 440,
        height: double.infinity,
        color: const Color.fromRGBO(216, 58, 80, 1),

        child: Stack(
          children: [
            Positioned(
              top: 213,
              left: 37,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "Hello!",
                    style: GoogleFonts.hindVadodara(
                      fontSize: 40,
                      fontWeight: FontWeight.w600,
                      height: 1.0,
                      letterSpacing: 0,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 4),

                  SizedBox(
                    width: 250,
                    height: 14,
                    child: Text(
                      "Welcome to the Hafele Dealership",
                      style: GoogleFonts.hindVadodara(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        height: 1.0,
                        letterSpacing: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //white container
            Positioned(
              top: 321,
              left: 0,
              child: Container(
                width: 440,
                height: 685,

                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(56),
                    topRight: Radius.circular(56),
                  ),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //login
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 36,
                        top: 40,
                      ),
                      child: Text(
                        "Login",
                        style: GoogleFonts.hindVadodara(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          height: 1.0,
                          letterSpacing: 0,
                          color: const Color.fromRGBO(216,58,80,1),
                        ),
                      ),
                    ),

                    //Email
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 132,
                        left: 36,
                        right: 45,
                      ),
                      child: SizedBox(
                        width: 359,
                        height: 57,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Email",

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(9),
                              borderSide: const BorderSide(
                                width: 1,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}