import 'package:first_project/alldoctors.dart';
import 'package:first_project/mywidgets/defauktTextField.dart';
import 'package:first_project/mywidgets/myicons.dart';
import 'package:first_project/mywidgets/mycontainers.dart';
import 'package:first_project/mywidgets/mytext.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var textController = TextEditingController();
  bool _isloading = false;
  String namepage = "Home";
  alldoctors() {
    setState(() {
      _isloading = !_isloading;
    });

    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => AllDoctors()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 200.0,
          flexibleSpace: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage("assets/images/2.jpg"),
                      ),
                      Spacer(),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(
                            message: 'Hi,Welcome Back,',
                            fontColor: Color(0xff858585),
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          MyText(
                            message: 'Israa Nabil Alghoul',
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                      Spacer(
                        flex: 6,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: (Icon(
                              Icons.notification_add_outlined,
                              color: Colors.black,
                              size: 32,
                            )),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
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
                ],
              ),
            ),
          )),
      body: Column(
        children: [
          SizedBox(
            height: 560,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 169.56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff0B8FAC),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                message: 'Medical Center',
                                fontColor: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 26,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              MyText(
                                message:
                                    'Yorem ipsum dolor sit amet,\nconsectetur adipiscing elit. Nunc\nvulputate libero et velit interdum,\nac aliquet odio mattis.',
                                fontColor: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset(
                              'assets/images/doctor.png',
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 20,
                  ),
                  child: Row(
                    children: [
                      MyText(
                        message: 'Categories',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                      Spacer(),
                      MyText(
                        message: 'See All',
                        fontColor: Color(0xff858585),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 100,
                      child:
                          ListView(scrollDirection: Axis.horizontal, children: [
                        SizedBox(
                          width: 20,
                        ),
                        MyCategoriyContainer(width: 149, name: "Denteeth"),
                        SizedBox(
                          width: 10,
                        ),
                        MyCategoriyContainer(width: 144, name: "Theripist"),
                        SizedBox(
                          width: 10,
                        ),
                        MyCategoriyContainer(width: 138, name: "surgeon"),
                        SizedBox(
                          width: 20,
                        ),
                      ]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 10,
                  ),
                  child: Row(
                    children: [
                      MyText(
                        message: 'All Doctors',
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: alldoctors,
                        child: MyText(
                          message: 'See All',
                          fontColor: Color(0xff858585),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: MyDoctorContainer(
                    doctorName: 'Dr.Pawan',
                    doctor: 'assets/images/doctor.png',
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(),
                (namepage == 'Home')
                    ? MyIconsOn(icon: Icons.home_outlined)
                    : MyIconsOff(icon: Icons.home_outlined),
                Spacer(
                  flex: 3,
                ),
                MyIconsOff(icon: Icons.access_time),
                Spacer(
                  flex: 3,
                ),
                MyIconsOff(icon: Icons.message_outlined),
                Spacer(
                  flex: 3,
                ),
                MyIconsOff(icon: Icons.account_circle_outlined),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
