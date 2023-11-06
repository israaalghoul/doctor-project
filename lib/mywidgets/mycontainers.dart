import 'package:first_project/mywidgets/mytext.dart';
import 'package:flutter/material.dart';

class MyCategoriyContainer extends StatelessWidget {
  MyCategoriyContainer({
    required this.name,
    required this.width,
  });

  String name;
  double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff7BC1B7),
      ),
      child: Center(
          child: MyText(
              message: name,
              fontSize: 20,
              fontColor: Colors.white,
              fontWeight: FontWeight.w600)),
    );
  }
}

class MyDoctorContainer extends StatefulWidget {
  MyDoctorContainer({
    required this.doctorName,
    required this.doctor,
  });
  String doctorName;
  String doctor;

  @override
  State<MyDoctorContainer> createState() => _MyDoctorContainerState();
}

class _MyDoctorContainerState extends State<MyDoctorContainer> {
  int x = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 161.87,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffD2EBE7),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Image.asset(
              widget.doctor,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, right: 10),
            child: Column(
              children: [
                SizedBox(
                  width: 194,
                  child: Row(
                    children: [
                      MyText(
                        message: widget.doctorName,
                        fontColor: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {
                          if (x == 0) {
                            setState(() {
                              x = 1;
                            });
                          } else if (x == 1) {
                            setState(() {
                              x = 0;
                            });
                          }
                        },
                        child: Icon(
                          size: 20,
                          (x == 0)
                              ? Icons.favorite_border_outlined
                              : Icons.favorite,
                          color: Color(0xff0B8FAC),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                MyText(
                  message:
                      'Jorem ipsum dolor, consectetur  \nadipiscing elit. Nunc v libero et \nvelit interdum, ac mattis.',
                  fontColor: Color(0xff858585),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Row(
                    children: [
                      Container(
                        width: 79,
                        height: 28.38,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF0B8FAC),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {},
                          child: MyText(
                              message: "Book",
                              fontColor: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        width: 65.3,
                      ),
                      Icon(Icons.star, color: Color(0xffF89603)),
                      MyText(
                        message: "5.0",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
