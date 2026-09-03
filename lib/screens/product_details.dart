import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar:AppBar(
        title:Text("Product Details",
        style:GoogleFonts.hindVadodara(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          letterSpacing: 0,
          color: Color.fromRGBO(255, 255, 255, 1)
        )
        ),
        backgroundColor:Color.fromRGBO(216, 58, 80, 1) ,
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Text("Product Category",style:GoogleFonts.hindVadodara(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Color.fromRGBO(216, 58, 80, 1),
                        letterSpacing: 0,
                      ),

                      ),
                      DropdownButtonFormField<String>(
                        decoration: const InputDecoration(
                          labelText: "Product Category",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(216, 58, 80, 1),
                            ),
                          ),
                        ),
                        items: [
                          DropdownMenuItem(
                            value: "ASKO",
                            child: Text("ASKO"),
                          ),
                          DropdownMenuItem(
                            value: "HAFELE",
                            child: Text("HAFELE"),
                          ),
                          DropdownMenuItem(
                            value: "FALMEC",
                            child: Text("FALMEC"),
                          ),
                        ],
                        onChanged: (value) {
                          // selected state
                        },
                      ),
                    ],
                  ),
                  SizedBox(height:10),
                  Column(
                    children: [
                      Text("Sub Category",style:GoogleFonts.hindVadodara(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color:Color.fromRGBO(216, 58, 80, 1),
                        letterSpacing: 0,
                      )),
                    ],
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(children: [],),
              SizedBox(height: 10,),
              Row(children: [],),
              SizedBox(height: 10,),

            ],
          ),
        ),
      )
    );
  }
}
