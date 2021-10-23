import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';
import 'components/body.dart';

class OTPForgotPassword extends StatelessWidget {
  const OTPForgotPassword({Key? key}) : super(key: key);

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
