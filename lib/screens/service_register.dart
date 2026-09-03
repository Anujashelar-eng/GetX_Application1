import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";
import "package:google_fonts/google_fonts.dart";
class ServiceRegister extends StatelessWidget {
  const ServiceRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:Text("Service Register",style:GoogleFonts.hindVadodara(
          fontWeight: FontWeight.w600,
          fontSize: 20,
          color: Color.fromRGBO(255, 255, 255, 1)
        ),
        ),
        backgroundColor: Color.fromRGBO(216, 80, 58, 1),
      ),
      body:SingleChildScrollView(
        child:
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dealer / Distributor",
                style: GoogleFonts.hindVadodara(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0,
                  color:Color.fromRGBO(216, 58, 80, 1),
                ),
              ),
              SizedBox(height:2),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(
                  width: 1,
                  color: Color.fromRGBO(216, 58, 80, 1),
                ),
              ),
                ),
              ),
              SizedBox(height:10),

              Text("Raised for",style:GoogleFonts.hindVadodara(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                letterSpacing:0,
                color:Color.fromRGBO(216, 58, 80, 1),
              ),),
              SizedBox(height:10),
              //Two Radio
              Row(
                children: [
                  Radio<String>(
                    value: "Customer"
                  ),
                  Text("Customer",style:GoogleFonts.hindVadodara(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color:Color.fromRGBO(216, 58, 80, 1),
                    letterSpacing: 0,
                  )),

                  Radio<String>(
                    value: "Self"
                  ),
                  Text("Self",style: GoogleFonts.hindVadodara(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color:Color.fromRGBO(216, 58, 80, 1),
                    letterSpacing: 0,
                  ),)
                ],
              ),

              SizedBox(height: 10,),
              Text(
                "Mobile Number",
                style: GoogleFonts.hindVadodara(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0,
                  color:Color.fromRGBO(216, 58, 80, 1),
                ),
              ),
              SizedBox(height:2),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      width: 1,
                      color: Color.fromRGBO(216, 58, 80, 1),
                    ),
                  ),
                ),
              ),
              SizedBox(height:10),
              Text(
                "Customer Name",
                style: GoogleFonts.hindVadodara(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0,
                  color: Color.fromRGBO(216, 58, 80, 1),
                ),
              ),
              SizedBox(height:2),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      width: 1,
                      color: Color.fromRGBO(216, 58, 80, 1),
                    ),
                  ),
                ),
              ),
              SizedBox(height:10),
              Row(
                children: [
                  Expanded(
                    child:
                  Column(
                    children:[
                      Text("State",style:GoogleFonts.hindVadodara(
                        fontWeight: FontWeight.w600,
                        color:Color.fromRGBO(216, 58, 80, 1),
                        fontSize: 15,
                      ),
                      ),

                      DropdownButtonFormField<String>(
                        decoration:InputDecoration(
                         // labelText: "Select State",
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1,
                              color: Color.fromRGBO(216, 58, 80, 1),
                            ),
                          ),
                        ) ,
                        items: [
                          DropdownMenuItem(
                               value:"Maharashtra",
                              child: Text("Maharashtra"),
                          ),
                          DropdownMenuItem(
                            value:"Karnataka",
                                child:Text("Karnataka"),
                          )
                        ],
                        onChanged: (value){
                        },
                          ),
                    ],
                  ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(child:
                  Column(
                    children: [
                      Text("City",style:GoogleFonts.hindVadodara(
                        fontWeight: FontWeight.w600,
                        color:Color.fromRGBO(216, 58, 80, 1),
                        fontSize: 15,
                      ),),

                      DropdownButtonFormField<String>(
                        decoration: const InputDecoration(
                          //labelText: "Select City",
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Color.fromRGBO(216, 58, 80, 1),
                            ),
                          ),
                        ),
                        items: [
                          DropdownMenuItem(
                            value: "India",
                            child: Text("India"),
                          ),
                          DropdownMenuItem(
                            value: "China",
                            child: Text("China"),
                          ),
                          DropdownMenuItem(
                            value: "USA",
                            child: Text("USA"),
                          ),
                        ],
                        onChanged: (value) {
                          // selected state
                        },
                      ),
                    ],
                  ),
                  ),
                ],
              ),
              SizedBox(height:10),
              Text(
                "Area",
                style: GoogleFonts.hindVadodara(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0,
                  color: Color.fromRGBO(216, 58, 80, 1),
                ),
              ),
              SizedBox(height:2),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      width: 1,
                      color: Color.fromRGBO(216, 58, 80, 1),
                    ),
                  ),
                ),
              ),
              SizedBox(height:10),

              Text(
                "Address",
                style: GoogleFonts.hindVadodara(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0,
                  color: Color.fromRGBO(216, 58, 80, 1),
                ),
              ),
              SizedBox(height:2),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      width: 1,
                      color: Color.fromRGBO(216, 58, 80, 1),
                    ),
                  ),
                ),
              ),
              SizedBox(height:10),

              Text(
                "Pin Code",
                style: GoogleFonts.hindVadodara(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0,
                  color: Color.fromRGBO(216, 58, 80, 1),
                ),
              ),
              SizedBox(height:2),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      width: 1,
                      color: Color.fromRGBO(216, 58, 80, 1),
                    ),
                  ),
                ),
              ),
              SizedBox(height:10),

              Text(
                "Email Id",
                style: GoogleFonts.hindVadodara(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0,
                  color: Color.fromRGBO(216, 58, 80, 1),
                ),
              ),
              SizedBox(height:2),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      width: 1,
                      color: Color.fromRGBO(216, 58, 80, 1),
                    ),
                  ),
                ),
              ),
              SizedBox(height:10),
              Text("Product Details",style:GoogleFonts.hindVadodara(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                letterSpacing: 0,
                color: Color.fromRGBO(216, 58, 80, 1),
              ),
              ),
              SizedBox(height:10),
              Container(
                height:114,
                width: 390,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromRGBO(216, 58, 80, 1),
                    width: 1,
                  ),
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Column(

                      children: [
                        Text("Hafele  Appliances"),
                        Text("Product : Hobs"),
                        Text("Type:Built-in Gas Hobs"),
                      ],
                    ),
                    Column(
                      children: [
                        SvgPicture.asset("assets/images/Vector.svg")
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height:10),
              ElevatedButton(onPressed: (){}, child: Text("Add Product",style:GoogleFonts.hindVadodara(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                letterSpacing: 0,
                color: Color.fromRGBO(216, 58, 80, 1),
              ),
              ),
              ),
              SizedBox(height:10),
              Row(
                children:[
                  Text("Date of Purchase",style:GoogleFonts.hindVadodara(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0,
                    color: Color.fromRGBO(216, 58, 80, 1),
                  ),
                  ),
                  Expanded(
                    child: TextField(
                      readOnly: true,
                      decoration: InputDecoration(
                        hintText: "Select Date",
                        suffixIcon: const Icon(Icons.calendar_today),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(216, 58, 80, 1),
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height:10),
              Text("Service Type",style:GoogleFonts.hindVadodara(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                letterSpacing: 0,
                color: Color.fromRGBO(216, 58, 80, 1),
              ),),
              SizedBox(height:10),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  //labelText: "Select services",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(216, 58, 80, 1),
                    ),
                  ),
                ),
                items: [
                  DropdownMenuItem(
                    value: "Service1",
                    child: Text("Service1"),
                  ),

                ],
                onChanged: (value) {
                  // selected state
                },
              ),
              SizedBox(height: 10,),

              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: Color.fromRGBO(216, 58, 80, 1),
                  hintText: "Attachment",
                  suffixIcon: IconButton(
                    onPressed: () {
                      // Show / hide password
                    },
                    icon: const Icon(Icons.visibility),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(216, 58, 80, 1),
                    ),
                  ),
                ),
              ),
              SizedBox(height:10),
              Text("Problem  to be resolved",style:GoogleFonts.hindVadodara(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                letterSpacing: 0,
                color: Color.fromRGBO(216, 58, 80, 1),
              ),),
              SizedBox(height:10),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                 // hintText: "Enter Description",
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(216, 58, 80, 1),
                    ),
                  ),
                ),
              ),
              SizedBox(height:10),
              ElevatedButton(
                onPressed: () {
                  Navi
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(216, 58, 80, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: Text(
                  "Register",
                  style: GoogleFonts.hindVadodara(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0,
                    color: Colors.white,
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
