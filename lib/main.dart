//------------------------------------- Israa Nabil Alghoul -------------------------------------
import 'package:first_project/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const screen());
}

class screen extends StatelessWidget {
  const screen({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: splashScreen());
  }
}
