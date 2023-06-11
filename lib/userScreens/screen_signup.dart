import 'package:farooq_streetfood/userScreens/screen_login.dart';
import 'package:farooq_streetfood/widgets/bottom_bar.dart';
import 'package:farooq_streetfood/widgets/mytestfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isHidden = true;
  IconData eyeIcon = Icons.visibility_outlined;

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
                      left: 50,
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
                      left: 75,
                      child: Text(
                        'Create a New Account',
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
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Create an account so you can see  our\nlatest Racipes',
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
                        'Name',
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
                    NewTestfield(
                      hintName: 'Name',
                      keyboardType: TextInputType.name,
                    ),
                    SizedBox(
                      height: 10,
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
                    NewTestfield(
                      hintName: 'abc@gmail.com',
                      keyboardType: TextInputType.emailAddress,
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
                    NewTestfield(
                      hintName: '*****',
                      keyboardType: TextInputType.visiblePassword,
                      isHidden: true,
                      suffixIcon: Icons.visibility,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Confirm Password',
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
                    NewTestfield(
                      hintName: '*****',
                      keyboardType: TextInputType.visiblePassword,
                      isHidden: true,
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
                          width: 223,
                          decoration: BoxDecoration(
                            color: Color(0xffF7BB0E),
                            borderRadius: BorderRadius.circular(29),
                          ),
                          child: Center(
                            child: Text(
                              'SIGNUP',
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
                      height: 30,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(29),
                      elevation: 1,
                      child: Container(
                        height: 36,
                        width: 223,
                        decoration: BoxDecoration(
                          color: Color(0xffF7BB0E),
                          borderRadius: BorderRadius.circular(29),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image(
                              height: 24,
                              width: 24,
                              image: AssetImage('images/google.png'),
                            ),
                            Text(
                              'Signup with Google',
                              style: TextStyle(
                                color: Color(0xff000000),
                                fontSize: 12,
                                fontFamily: 'PoppinsMedium',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 70,
                    ),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account',
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
                          GestureDetector(
                            onTap: () {
                              Get.to(LoginScreen());
                            },
                            child: Text(
                              ' LOGIN',
                              style: TextStyle(
                                color: Color(0xffF7BB0E),
                                fontFamily: 'PoppinsSemiBold',
                                fontSize: 12,
                              ),
                            ),
                          ),
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
