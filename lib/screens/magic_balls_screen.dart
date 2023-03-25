import 'package:flutter/material.dart';
import 'dart:math';

class MagicBalls extends StatefulWidget {
  MagicBalls({Key? key}) : super(key: key);

  @override
  State<MagicBalls> createState() => _MagicBallsState();
}

class _MagicBallsState extends State<MagicBalls> {
  var ballImages = 1;
  void changeImages() {
    setState(() {
      ballImages = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff4B92E6),
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Color(0xff36539C),
        ),
        body: Center(
          child: TextButton(
            onPressed: () {
              changeImages();
            },
            child: Image.asset('assets/images/ball$ballImages.png'),
          ),
        ));
  }
}
