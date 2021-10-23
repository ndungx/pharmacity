import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'components/body.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        shadowColor: Colors.transparent,
      ),
      body: const Body(),
    );
  }
}
