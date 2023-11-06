import 'package:first_project/mywidgets/mytext.dart';
import 'package:first_project/signinscreen.dart';
import 'package:flutter/material.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => SignInScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/Medinova.jpg",
              height: 135,
              width: 135,
            ),
            SizedBox(
              height: 40,
            ),
            MyText(
                message: 'Medica',
                fontSize: 70,
                fontColor: Color(0xFF0B8FAC),
                fontWeight: FontWeight.bold),
          ],
        ),
      ),
    );
  }
}
