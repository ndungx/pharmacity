import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pharmacity/preferences_service.dart';
import 'package:pharmacity/screen/login/login_screen.dart';
import '../intro/introduction_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static String routeName = "/splash";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final _prefs = PreferencesSerice();

  late bool _isFirstTime = true;

  @override
  void initState() {
    super.initState();
    _setIsFirstTime();
    Future.delayed(const Duration(seconds: 1), () {
      _isFirstTime ? _navigateToIntroductionScreen() : _navigateToLoginScreen();
    });
  }

  void _setIsFirstTime() async {
    final getIsFirstTime = await _prefs.getFirstTime();
    setState(() {
      _isFirstTime = getIsFirstTime;
    });
  }

  _navigateToIntroductionScreen() async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.pushReplacement(
      context,
      PageTransition(
        child: const IntroductionScreen(),
        type: PageTransitionType.fade,
        curve: Curves.easeIn,
        duration: const Duration(milliseconds: 500),
      ),
    );
  }

  _navigateToLoginScreen() async {
    await Future.delayed(const Duration(seconds: 1));
    Navigator.pushReplacement(
      context,
      PageTransition(
        child: const LoginScreen(),
        type: PageTransitionType.fade,
        curve: Curves.easeIn,
        duration: const Duration(milliseconds: 500),
      ),
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
