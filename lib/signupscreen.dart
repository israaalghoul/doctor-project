import 'package:first_project/mywidgets/defauktTextField.dart';
import 'package:first_project/home.dart';
import 'package:first_project/mywidgets/mytext.dart';
import 'package:first_project/signinscreen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  bool _isloading = false;
  bool _isloadingup = false;

  GlobalKey<FormState> formstate = new GlobalKey<FormState>();

  signin() {
    setState(() {
      _isloading = !_isloading;
    });

    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => SignInScreen()));
  }

  signup() {
    setState(() {
      _isloadingup = !_isloadingup;
    });

    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyText(
                      message: 'Create New Account',
                      fontColor: Color(0xFF0B8FAC),
                      fontWeight: FontWeight.w500,
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Form(
                    key: formstate,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            MyText(
                              message: 'Full Name',
                              fontColor: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DefaultTextField(
                          controller: passwordController,
                          keyboardtype: TextInputType.emailAddress,
                          labletext: 'Enter Your Full Name',
                          weight: double.infinity,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            MyText(
                              message: 'Password',
                              fontColor: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DefaultTextField(
                          controller: passwordController,
                          keyboardtype: TextInputType.emailAddress,
                          labletext: 'Enter Your Password',
                          weight: double.infinity,
                          ispass: true,
                          suffixicon: Icons.visibility_off,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            MyText(
                              message: 'Email',
                              fontColor: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DefaultTextField(
                          controller: emailController,
                          keyboardtype: TextInputType.emailAddress,
                          labletext: 'Enter Your Email',
                          weight: 376.55,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            MyText(
                              message: 'Mobile Number',
                              fontColor: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DefaultTextField(
                          controller: passwordController,
                          keyboardtype: TextInputType.number,
                          labletext: 'Enter Your Phone Number',
                          weight: double.infinity,
                        ),
                      ],
                    )),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                    onPressed: signup,
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF0B8FAC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Container(
                        height: 60,
                        width: 376.55,
                        child: !_isloading
                            ? Center(
                                child: Text(
                                'Sign Up',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ))
                            : Center(
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                              ))),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText(
                      message: 'OR',
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                      fontColor: Color(0xff858585),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(
                      flex: 4,
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Color(0xffD2EBE7)),
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/fb.jpg",
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Color(0xffD2EBE7)),
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/google.jpg",
                          ),
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 4,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        MyText(
                          message: 'Have an account?',
                          fontSize: 16,
                          fontColor: Color(0xff858585),
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        TextButton(
                            onPressed: signin,
                            child: MyText(
                              message: 'Sign In',
                              fontColor: Color(0xff0B8FAC),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ))
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
