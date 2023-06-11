import 'package:farooq_streetfood/userScreens/screen_onboarding3.dart';
import 'package:farooq_streetfood/userScreens/screen_signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        appBar: AppBar(
          backgroundColor: Color(0xffffffff),
          elevation: 0,
          actions: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 14.9),
                child: GestureDetector(
                  onTap: () {
                    Get.to(Signup());
                  },
                  child: Text(
                    "skip",
                    style: TextStyle(
                        color: Color(0xff999999),
                        fontFamily: 'PoppinsMedium',
                        fontSize: 15),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: Image.asset('images/oB2.png'),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    "Get the exact nutrition\nvalue of everything you eat",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff000000),
                        fontFamily: 'PoppinsMedium',
                        fontSize: 19),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "We are updating our food database every \nminute to help "
                    "you track your calories",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffACACAC),
                      fontFamily: 'PoppinsRegular',
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 30),
          child: FloatingActionButton(
            backgroundColor: Color(0xffF7BB0E),
            onPressed: () {
              Get.to(OnBoarding3());
            },
            child: Icon(
              Icons.arrow_forward,
              color: Color(0xff000000),
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
