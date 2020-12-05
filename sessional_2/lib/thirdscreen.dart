import 'dart:io';
import 'package:flutter/material.dart';
import 'package:sessional_2/MainScreen.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        // leading: IconButton(icon: Icon(Icons.menu), onPressed: (){
        //
        // }),
        title: Text("Level 2"),
        automaticallyImplyLeading: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_sharp), onPressed: ()=> MainScreen(),
        ),
      ),
    );



  }
}