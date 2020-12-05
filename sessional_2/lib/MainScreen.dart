
import 'package:flutter/material.dart';
import 'secondscreen.dart';
import 'thirdscreen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        // leading: IconButton(icon: Icon(Icons.menu), onPressed: (){
        //
        // }),
        title: Text("SELECT LEVEL"),
      ),

      body: Center(child: RaisedButton(

        child: Text('Level 1',style: TextStyle(
          color: Colors.cyanAccent,

        ),
        ),
        color: Colors.blue,
        onPressed: (){
          Navigator.push(context,
            MaterialPageRoute(builder: (context)=>SecondScreen()
            ),
          );
        },
      ),
      ),

      body: Center(child: RaisedButton(

        child: Text('Level 2',style: TextStyle(
          color: Colors.cyanAccent,

        ),
        ),
        color: Colors.blue,
        onPressed: (){
          Navigator.push(context,
          MaterialPageRoute(builder: (context)=>ThirdScreen()
          ),
          );
        },
      ),
      ),
    );
  }
}