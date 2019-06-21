import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MagicBall());
}

class MagicBall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Center(
            child: Text(
              'Ask Me Anything',
              style: TextStyle(color: Colors.blue.shade100),
            ),
          ),
        ),
        body: ballPage(),
      ),
    );
  }
}

class ballPage extends StatefulWidget {
 

  @override
  _ballPageState createState() => _ballPageState();
}

class _ballPageState extends State<ballPage> {
   int ball = 1;
  void move() {
    setState(() {
      ball = Random().nextInt(5) + 1 ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        // verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                move();
                print('ball pressed');
              },
              child: Image.asset('images/ball$ball.png'),
            ),
          ),
        ],
      ),
    );
  }
}
