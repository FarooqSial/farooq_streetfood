import 'package:farooq_streetfood/userScreens/screen_onboarding2.dart';
import 'package:farooq_streetfood/userScreens/screen_signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen1 extends StatelessWidget {
  const OnBoardingScreen1({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.only(right: 15),
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
              child: Image(
                image: AssetImage('images/oB1.png'),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Text(
                    "Get all the healthy recipes\nthat you need",
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
                    "Whether you are losing or gaining. we\nhave all the recipes you’ll need.",
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
              Get.to(OnBoarding2());
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
