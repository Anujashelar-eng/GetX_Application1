import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_application1/about_page.dart';
import 'package:getx_application1/controllers/home_controller.dart';

class HomePage extends StatelessWidget{
  //const HomePage({super.key});
  final HomeController controller =Get.put(HomeController());
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text("GetX Application"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body:Center(
          child:Column(
        mainAxisAlignment:MainAxisAlignment.center,
       children:[

         Obx( () => Text(
           "${controller.count.value}",

         )
         ),
         SizedBox(height:30),
         ElevatedButton(
           onPressed: () {
             controller.increment();
           },
           child: const Text("Increment"),
         ),
         SizedBox(height:30),

         ElevatedButton(onPressed:(){
           controller.decrement();
         }, child: Text("Decrement")),

         SizedBox(height:30),

         ElevatedButton(onPressed: (){
             Get.to(AboutPage());
         }, child: Text("Next Page"))
       ]
      )
      )
    );
  }
}