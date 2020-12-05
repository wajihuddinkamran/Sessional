import 'package:flutter/material.dart';
import 'dart:math';
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
class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen>
    with SingleTickerProviderStateMixin {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  AnimationController _controller;
  CurvedAnimation animation;

  @override
  void initState() {
    super.initState();
    animate();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  animate(){
    _controller =
        AnimationController(duration: Duration(seconds: 1), vsync: this);
    animation= CurvedAnimation(parent: _controller,curve: Curves.bounceOut);
    animation.addListener(() {
      setState(() {

      });
      // print(_controller.value);
    });
    animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          leftDiceNumber = Random().nextInt(6) + 1;
          rightDiceNumber = Random().nextInt(6) + 1;
        });
        // print('Completed');
        _controller.reverse();
      }
    });
  }

  void roll() {
    _controller.forward();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Level 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onDoubleTap: roll,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Image(height:200- (animation.value)*200,
                        image: AssetImage(
                            'assets/images/dice-png-$leftDiceNumber.png'),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onDoubleTap: roll,
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Image(height:200- (animation.value)*200,
                        image: AssetImage(
                            'assets/images/dice-png-$rightDiceNumber.png'),
                      ),
                    ),
                  ),
                )
              ],
            ),
            RaisedButton(
              onPressed: roll,
              child: Text(
                'Roll',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
