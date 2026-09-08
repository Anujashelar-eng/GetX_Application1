import 'package:flutter/material.dart';
import 'package:getx_application1/controllers/login_controller.dart';
import 'package:getx_application1/screens/brand_page.dart';
import 'package:getx_application1/screens/login/otp_verification.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {

  final LoginController controller = LoginController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {



    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: 440,
          height: 900,
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
        
              // white container
              Positioned(
                top: 321,
                left: 0,
                child: Container(
                  width: 400,
                  height: 600,
        
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
                      // login
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
                            color: const Color.fromRGBO(216, 58, 80, 1),
                          ),
                        ),
                      ),
        
                      // Phone Number
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
                            controller: controller.mobileController,
                            decoration: InputDecoration(
                              hintText: "Phone Number",
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
        
                      // Password
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 36,
                          right: 45,
                        ),
                        child: SizedBox(
                          width: 359,
                          height: 57,
                          child: TextField(
                            controller: controller.passwordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Password",
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
        
                      // Login Button
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                          left: 36,
                          right: 45,
                        ),
                        child: SizedBox(
                          width: 359,
                          height: 52,
                          child: ElevatedButton(
                            onPressed: () async {
                              final success = await controller.login();

                              if (success) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BrandPage(token: controller.token!),
                                  ),
                                );
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                              const Color.fromRGBO(216, 58, 80, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(9),
                              ),
                            ),
                            child: Text(
                              "Login",
                              style: GoogleFonts.hindVadodara(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
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
      ),
    );
  }
}