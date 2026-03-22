import 'package:flutter/material.dart';

class Uihelper {
  static CustomImage({required String img}) {
    return Image.asset('assets/images/$img');
  }

  static CustomText({
    required String text,
    required Color color,
    required FontWeight fontWeight,
    String? fontFamily,
    TextAlign? textAlign,
    required double fontSize,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontFamily: fontFamily ?? 'regular',
        fontSize: fontSize,
        color: color,
      ),
      textAlign: textAlign ?? TextAlign.left,
    );
  }

  static CustomTextFiled({
    required TextEditingController controller,
    required String text,
  }) {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
            fontWeight: FontWeight.w400,
            fontFamily: 'regular',
            fontSize: 14,
          ),
          prefixIcon: Icon(Icons.search, color: Colors.black),
          suffixIcon: Icon(Icons.mic, color: Colors.black),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
