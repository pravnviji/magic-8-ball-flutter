import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: BallPage(),
      ),
    );

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF0D47A1),
        title: Text('Ask me anything'),
      ),
      body: (Container(
        color: Colors.blue,
        child: Ball(),
      )),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _Ball createState() => _Ball();
}

class _Ball extends State<Ball> {
  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(4) + 1;
            print(ballNumber);
          });
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
