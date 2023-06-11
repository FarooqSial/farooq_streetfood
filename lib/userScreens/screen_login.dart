import 'package:farooq_streetfood/userScreens/screen_forgetpassword.dart';
import 'package:farooq_streetfood/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isHidden = true;
  IconData eyeIcon = Icons.visibility_off_outlined;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        appBar: AppBar(
          backgroundColor: Color(0xffffffff),
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Color(0xff000000),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
                width: double.maxFinite,
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 40,
                      child: Container(
                        height: 83,
                        width: 83,
                        decoration: BoxDecoration(
                          color: Color(0xffF7BB0E),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 40,
                      left: 65,
                      child: Text(
                        'Welcome Back',
                        style: TextStyle(
                          color: Color(0xff000000),
                          fontFamily: 'PoppinsSemiBold',
                          fontSize: 21,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'I am very happy to see you. You can continue\nto login for latest recipe',
                        style: TextStyle(
                          color: Color(0xffADAAAA),
                          fontSize: 12,
                          fontFamily: 'PoppinsRegular',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Email',
                        style: TextStyle(
                          color: Color(0xffA6A6A6),
                          fontSize: 10,
                          fontFamily: 'PoppinsRegular',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(14),
                      elevation: 1,
                      child: SizedBox(
                        height: 31,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 10, left: 10),
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 10,
                              fontFamily: 'PoppinsMedium',
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide: BorderSide(
                                color: Color(0xffF7BB0E),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide: BorderSide(
                                color: Color(0xffF7BB0E),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide: BorderSide(
                                color: Color(0xffF7BB0E),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Password',
                        style: TextStyle(
                          color: Color(0xffA6A6A6),
                          fontSize: 10,
                          fontFamily: 'PoppinsRegular',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(14),
                      elevation: 1,
                      child: SizedBox(
                        height: 31,
                        child: TextField(
                          obscureText: isHidden,
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  isHidden = !isHidden;
                                  if (isHidden == true) {
                                    isHidden = true;
                                  } else {
                                    isHidden = false;
                                  }
                                });
                              },
                              child: Icon(
                                eyeIcon,
                              ),
                            ),
                            contentPadding: EdgeInsets.only(top: 10, left: 10),
                            hintText: '..........',
                            hintStyle: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 10,
                              fontFamily: 'PoppinsMedium',
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide: BorderSide(
                                color: Color(0xffF7BB0E),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide: BorderSide(
                                color: Color(0xffF7BB0E),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide: BorderSide(
                                color: Color(0xffF7BB0E),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          Get.to(ForgetPassword());
                        },
                        child: Text(
                          'Forget Password',
                          style: TextStyle(
                            color: Color(0xffA6A6A6),
                            fontSize: 10,
                            fontFamily: 'PoppinsRegular',
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(29),
                      elevation: 1,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BottomBar()));
                        },
                        child: Container(
                          height: 36,
                          width: 148,
                          decoration: BoxDecoration(
                            color: Color(0xffF7BB0E),
                            borderRadius: BorderRadius.circular(29),
                          ),
                          child: Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontFamily: 'PoppinsSemiBold',
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 230,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don’t have an account',
                            style: TextStyle(
                              color: Color(0xff000000),
                              fontSize: 12,
                              fontFamily: 'PoppinsMedium',
                            ),
                          ),
                          VerticalDivider(
                            thickness: 1,
                            color: Color(0xffF7BB0E),
                          ),
                          Text(
                            ' SIGNUP',
                            style: TextStyle(
                              color: Color(0xffF7BB0E),
                              fontFamily: 'PoppinsSemiBold',
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
