import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  MyText({
    required this.message,
    this.fontSize = 14,
    this.fontColor = Colors.black,
    this.fontWeight = FontWeight.w400,
    this.maxLines = 4,
    this.overflow = TextOverflow.visible,
  });
  String message;
  double fontSize;
  FontWeight fontWeight;
  Color fontColor;
  int maxLines;
  TextOverflow overflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      message,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: fontColor,
        overflow: overflow,
      ),
      maxLines: maxLines,
    );
  }
}
