import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_application1/home_page.dart';
import 'package:getx_application1/screens/brand_page.dart';
import 'package:getx_application1/screens/login/login_page.dart';
import 'package:getx_application1/screens/login/change_password.dart';
import 'package:getx_application1/screens/login/otp_verification.dart';
import 'package:getx_application1/screens/service_register.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
      home:LoginPage(),
    );
  }
}