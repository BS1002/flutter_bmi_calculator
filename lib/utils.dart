import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mText extends StatelessWidget {
  mText(this.text, {this.textSize = 24.0});

  String text;
  double textSize;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontSize: textSize, color: Colors.white, fontFamily: 'RobotoMono'));
  }
}

class mRoundBox extends StatelessWidget {
  late double height = 0, width = 0;

  mRoundBox({this.height = 0, this.width = 0});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
