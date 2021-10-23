import 'package:flutter/material.dart';

class HidePhoneNumber extends StatelessWidget {
  const HidePhoneNumber(
      {Key? key,
      required this.phoneNumber,
      this.textColor,
      this.fontSize = 14,
      this.fontWeight = FontWeight.normal,
      this.textDecoration = TextDecoration.none})
      : super(key: key);

  final String phoneNumber;
  final Color? textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final TextDecoration textDecoration;

  String hidePhoneNumber(String phoneNumber) {
    return phoneNumber.substring(0, 7) + "***";
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      hidePhoneNumber(phoneNumber),
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
        decoration: textDecoration,
      ),
    );
  }
}
