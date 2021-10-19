import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../intro/introduction_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.pushReplacement(
      context,
      PageTransition(
        child: const IntroductionScreen(),
        type: PageTransitionType.fade,
        curve: Curves.easeIn,
        duration: const Duration(milliseconds: 500),
      ),
      // MaterialPageRoute(
      //   builder: (context) => const IntroductionPage(),
      // ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/splash_screen.png',
          fit: BoxFit.cover,
          alignment: Alignment.center,
          height: double.infinity,
          width: double.infinity,
        ),
      ),
    );
  }
}
