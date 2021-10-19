import 'package:flutter/material.dart';

const kPrimaryColor = Color(0x0E62F9FF);
const kAnimationDuration = Duration(milliseconds: 200);

// Form errors
final RegExp phoneValidationRegExp =
    RegExp('/(03|05|07|08|09|01[2|6|8|9])+([0-9]{8})\b/');
const String kPhoneNullError = "Vui lòng nhập số điện thoại của bạn";
const String kInvalidInvalidError = "Vui lòng nhập đúng số điện thoại";
const String kPassNullError = "Please Enter your password";
const String kShortPassError = "Password is too short";
const String kMatchPassError = "Passwords don't match";
const String kNamelNullError = "Please Enter your name";
const String kPhoneNumberNullError = "Please Enter your phone number";
const String kAddressNullError = "Please Enter your address";
