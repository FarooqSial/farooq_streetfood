import 'package:flutter/material.dart';

class NewTestfield extends StatelessWidget {
  NewTestfield({
    super.key,
    required this.hintName,
    required this.keyboardType,
    this.isHidden,
    this.suffixIcon,
  });

  String hintName;
  TextInputType keyboardType;
  bool? isHidden;
  IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(14),
      elevation: 1,
      child: SizedBox(
        height: 31,
        child: TextField(
          obscureText: isHidden ?? false,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 10, left: 10),
            hintText: hintName,
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
    );
  }
}
