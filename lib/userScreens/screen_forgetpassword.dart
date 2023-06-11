import 'package:farooq_streetfood/widgets/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        appBar: AppBar(
          backgroundColor: Color(0xffffffff),
          elevation: 0,
          centerTitle: true,
          title: Text(
            'Forget Password',
            style: TextStyle(
              color: Color(0xff000000),
              fontSize: 13,
              fontFamily: 'PoppinsMedium',
            ),
          ),
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
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Column(
            children: [
              Image(
                image: AssetImage('images/forget.png'),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Select email should we use to reset\npassword',
                style: TextStyle(
                  color: Color(0xff000000),
                  fontFamily: 'PoppinsMedium',
                  fontSize: 13,
                ),
              ),
              SizedBox(
                height: 100,
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
                      hintText: 'abc@gmail.com',
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
                height: 100,
              ),
              Material(
                borderRadius: BorderRadius.circular(29),
                elevation: 1,
                child: GestureDetector(
                  onTap: () {
                    Get.to(BottomBar());
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
                        'SEND',
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
            ],
          ),
        ),
      ),
    );
  }
}
