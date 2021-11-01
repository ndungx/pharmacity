import 'package:flutter/material.dart';
import 'package:pharmacity/screen/home/home.dart';
import 'package:pharmacity/screen/login/login_screen.dart';
import 'package:pharmacity/screen/product_detail/product_details_screen.dart';
import 'package:pharmacity/screen/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  LoginScreen.routeName: (context) => const LoginScreen(),
  Home.routeName: (context) => const Home(),
  ProductDetailScreen.routeName: (context) => const ProductDetailScreen(),
};
