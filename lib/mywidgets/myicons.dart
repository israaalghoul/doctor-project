import 'package:flutter/material.dart';

class MyIconsOn extends StatelessWidget {
  MyIconsOn({
    required this.icon,
  });
  IconData icon;
  int isclick = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: Color(0xff0B8FAC), borderRadius: BorderRadius.circular(10)),
      child: IconButton(
        onPressed: () {},
        icon: Icon(icon),
        iconSize: 24,
        color: Colors.white,
      ),
    );
  }
}

class MyIconsOff extends StatelessWidget {
  MyIconsOff({
    required this.icon,
  });
  IconData icon;
  int isclick = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      child: IconButton(
        onPressed: () {},
        icon: Icon(icon),
        iconSize: 24,
        color: Colors.black,
      ),
    );
  }
}
