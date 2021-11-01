import 'package:flutter/material.dart';
import 'package:pharmacity/screen/create_password/create_password_screen.dart';
import 'package:pharmacity/screen/forgot_password/forgot_password_screen.dart';
import 'package:pharmacity/screen/home/home.dart';
import 'package:pharmacity/screen/login/login_screen.dart';
import 'package:pharmacity/screen/otp/otp_forgot_password_screen.dart';
import 'package:pharmacity/screen/pharmacity_location.dart/pharmacity_location_screen.dart';
import 'package:pharmacity/screen/product_detail/product_details_screen.dart';
import 'package:pharmacity/screen/register/register_screen.dart';

final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => const LoginScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  RegisterScreen.routeName: (context) => const RegisterScreen(),
  OTPForgotPasswordScreen.routeName: (context) =>
      const OTPForgotPasswordScreen(),
  CreatePasswordScreen.routeName: (context) => const CreatePasswordScreen(),
  Home.routeName: (context) => const Home(),
  PharmacityLocationScreen.routeName: (context) =>
      const PharmacityLocationScreen(),
  ProductDetailScreen.routeName: (context) => const ProductDetailScreen(),
};
