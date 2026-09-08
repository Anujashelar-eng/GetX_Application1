import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text("About Page"),
        centerTitle:true,
        backgroundColor: Colors.blue,
      ),
      body:Column(
        children: [

        ],
      )
    );
  }
}