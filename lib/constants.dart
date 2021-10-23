import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF1562F9);
const kPrimaryDarkColor = Color(0xFF001943);
const kSecondaryColor = Color(0xFFCECECE);
const kSuccessColor = Color(0xFF5CAB45);
const kAnimationDuration = Duration(milliseconds: 200);

// Form errors
final RegExp phoneValidatorRegExp = RegExp(
    '^(([03+[2-9]|05+[6|8|9]|07+[0|6|7|8|9]|08+[1-9]|09+[1-4|6-9]]){3})+[0-9]{7}\$');
const String kPhoneNullError = "Vui lòng nhập số điện thoại của bạn";
const String kInvalidPhoneError = "Vui lòng nhập đúng số điện thoại";
const String kPhoneNumberNullError = "Vui lòng không bỏ trống số điện thoại";
const String kShortPassError = "Mật khẩu quá ngắn";
const String kMatchPassError = "Mật khẩu không đúng";
const String kPassNullError = "Vui lòng không bỏ trống mật khẩu";
const String kNamelNullError = "Please Enter your name";
const String kAddressNullError = "Please Enter your address";
