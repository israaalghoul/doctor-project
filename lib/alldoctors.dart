import 'package:first_project/home.dart';
import 'package:first_project/mywidgets/defauktTextField.dart';
import 'package:first_project/mywidgets/mycontainers.dart';
import 'package:first_project/mywidgets/mytext.dart';
import 'package:flutter/material.dart';

class AllDoctors extends StatefulWidget {
  const AllDoctors({super.key});

  @override
  State<AllDoctors> createState() => _AllDoctorsState();
}

class _AllDoctorsState extends State<AllDoctors> {
  var textController = TextEditingController();
  bool _isloading = false;
  home() {
    setState(() {
      _isloading = !_isloading;
    });

    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
            onPressed: home,
            icon: Icon(
              Icons.chevron_left,
              color: Colors.black,
              size: 30,
            )),
        title: MyText(
            message: "All Doctors",
            fontColor: Color(0xff0B8FAC),
            fontWeight: FontWeight.w700),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  DefaultTextField(
                    controller: textController,
                    keyboardtype: TextInputType.name,
                    labletext: 'Search a Doctor',
                    prefixicon: Icons.search,
                    iconColor: Color(0xff858585),
                    suffixicon: Icons.mic_none_outlined,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  SizedBox(
                    height: 696.76,
                    child: ListView(scrollDirection: Axis.vertical, children: [
                      MyDoctorContainer(
                        doctorName: 'Dr.Pawan',
                        doctor: 'assets/images/doctor.png',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyDoctorContainer(
                        doctorName: 'Dr.Wanitha',
                        doctor: 'assets/images/doctor.png',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyDoctorContainer(
                        doctorName: 'Dr.Udara',
                        doctor: 'assets/images/doctor2.png',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      MyDoctorContainer(
                        doctorName: 'Dr.Pawan',
                        doctor: 'assets/images/doctor.png',
                      ),
                    ]),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
