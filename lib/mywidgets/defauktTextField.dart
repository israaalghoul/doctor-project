import 'package:flutter/material.dart';

class DefaultTextField extends StatelessWidget {
  DefaultTextField({
    required this.controller,
    required this.keyboardtype,
    required this.labletext,
    this.onsubmit = null,
    this.onchange = null,
    this.validate = null,
    this.suffixpressed,
    this.prefixicon,
    this.suffixicon,
    this.fontsize = 18.0,
    this.height = 60,
    this.weight = 371.42,
    this.ispass = false,
    this.iconColor = const Color(0xFF0B8FAC),
    this.fillColor = const Color(0x1E858585),
    this.radius = 10.0,
    this.maxlength,
  });
  TextEditingController controller;
  TextInputType? keyboardtype;
  ValueChanged? onsubmit;
  ValueChanged? onchange;
  FormFieldValidator? validate;
  VoidCallback? suffixpressed;
  late String labletext;
  IconData? prefixicon;
  IconData? suffixicon;
  double fontsize;
  double height;
  double weight;
  bool ispass;
  Color iconColor;
  Color fillColor;
  double radius;
  int? maxlength;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: weight,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius), color: fillColor),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            hintText: labletext,
            hintStyle: TextStyle(
                fontSize: 18,
                color: Color(0xff858585),
                fontWeight: FontWeight.w400),
            prefixIcon: prefixicon != null
                ? Icon(
                    prefixicon,
                    color: iconColor,
                  )
                : null,
            suffixIcon: suffixicon != null
                ? IconButton(
                    onPressed: () {
                      suffixpressed!();
                    },
                    icon: Icon(suffixicon),
                    color: iconColor,
                  )
                : null,
            border: InputBorder.none,
            prefix: SizedBox(
              width: 15,
            )),
        keyboardType: keyboardtype,
        obscureText: ispass,
        onFieldSubmitted: onsubmit,
        onChanged: onchange,
        validator: validate,
        style: TextStyle(
            fontSize: fontsize,
            fontWeight: FontWeight.w500,
            color: Color(0xff858585)),
        maxLength: maxlength,
        cursorColor: Color(0xFF0B8FAC),
      ),
    );
  }
}
