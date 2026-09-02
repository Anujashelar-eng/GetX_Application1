import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:google_fonts/google_fonts.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,


      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(216, 58, 80, 1),
        centerTitle: true,

        leading: const Icon(
          Icons.person,
          color: Colors.white,
        ),

        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ],

        title: Text(
          "Home",
          style: GoogleFonts.hindVadodara(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, Vinayak Traders!",
                        style: GoogleFonts.hindVadodara(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: const Color.fromRGBO(
                            216,
                            58,
                            80,
                            1,
                          ),
                        ),
                      ),

                     // const SizedBox(height: 2),

                      Text(
                        "Good Morning",
                        style: GoogleFonts.hindVadodara(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: const Color.fromRGBO(
                            216,
                            58,
                            80,
                            1,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SvgPicture.asset(
                    "assets/images/Rectangle 2.svg",
                    width: 36,
                    height: 45,
                    fit: BoxFit.contain,
                    placeholderBuilder: (context) => const SizedBox(
                      width: 36,
                      height: 45,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 40),


              SizedBox(
                width: double.infinity,
                height: 179,
                child: SvgPicture.asset(
                  "assets/images/Rectangle 3.svg",
                  fit: BoxFit.contain,
                  placeholderBuilder: (context) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ),

              const SizedBox(height: 50),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [


                  Expanded(
                    child: Column(
                      children: [

                        SvgPicture.asset(
                          "assets/images/Group 8.svg",
                          width: 119,
                          height: 119,
                        ),

                        const SizedBox(height: 10),

                        Text(
                          "Service Register",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.hindVadodara(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(
                              216,
                              58,
                              80,
                              1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),


                  Expanded(
                    child: Column(
                      children: [

                        SvgPicture.asset(
                          "assets/images/Group 21.svg",
                          width: 118,
                          height: 118,
                        ),

                        const SizedBox(height: 10),

                        Text(
                          "Service Status",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.hindVadodara(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(
                              216,
                              58,
                              80,
                              1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height:10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [


                  Expanded(
                    child: Column(
                      children: [

                        SvgPicture.asset(
                          "assets/images/Group 23.svg",
                          width: 119,
                          height: 119,
                        ),

                        const SizedBox(height: 10),

                        Text(
                          "Hafele India",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.hindVadodara(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(
                              216,
                              58,
                              80,
                              1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),


                  Expanded(
                    child: Column(
                      children: [

                        SvgPicture.asset(
                          "assets/images/Group 20.svg",
                          width: 118,
                          height: 118,
                        ),

                        const SizedBox(height: 10),

                        Text(
                          "Hafele Flavours",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.hindVadodara(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(
                              216,
                              58,
                              80,
                              1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}