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
        centerTitle: true,
        backgroundColor: Color.fromRGBO(216,58,80,1),
        title: Text("Home",
        style:GoogleFonts.hindVadodara(
          fontWeight: FontWeight.w600,
          fontSize: 20,
          letterSpacing: 0,
          color:Color.fromRGBO(255,255,255,1),
        ),
        ),
      ),
      body:SingleChildScrollView(
        child:SizedBox(
          height:800,
          child:Stack(
            children: [
              Positioned(
                top: 156,
                left:26,
                child: Text(
                "Hi ,Vinayak Traders!",
                style:GoogleFonts.hindVadodara(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  letterSpacing: 0,
                  color:Color.fromRGBO(255,255,255,1),
                ),
              ),
              ),

              Positioned(
                top: 179,
                left:26,
                child: Text(
                  "Good Morning",
                  style:GoogleFonts.hindVadodara(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    letterSpacing: 0,
                    color:Color.fromRGBO(255,255,255,1),
                  ),
                ),
              ),


              Positioned(
                top:217,
                left:18,
                child:
                SvgPicture.asset("assets/images/Rectangle 3.svg"
                ,
                height:179,
                  width:391,
                )
            ),
              Positioned(
                top:451,
                  left:272,
                  child:Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(children: [
                       SvgPicture.asset("assets/images/Group 8.png",width:119,height: 119,),
                      SizedBox(height:10),
                      Text("Service Register",style:GoogleFonts.hindVadodara(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        height: 1.0,
                        letterSpacing: 0,
                        color: Color.fromRGBO(216, 58, 80, 1),
                      ),
                      ),
                      ]
                      ),
                      Column(children: [
                        SvgPicture.asset("assets/images/Group 21.svg",width:118,height: 118,),
                        SizedBox(height:10),
                        Text("Service Status",style:GoogleFonts.hindVadodara(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          height: 1.0,
                          letterSpacing: 0,
                          color: Color.fromRGBO(216, 58, 80, 1),
                        ),
                        ),
                      ]
                      ),
                  ],)
                ],
              )
              ),



        ],
          )
        ),
      )
    );
  }
}
