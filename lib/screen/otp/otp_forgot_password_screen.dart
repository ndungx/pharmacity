import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';
import 'components/body.dart';

class OTPForgotPasswordScreen extends StatelessWidget {
  const OTPForgotPasswordScreen({Key? key}) : super(key: key);

  static String routeName = "/otp";

  @override
  Widget build(BuildContext context) {
    final OTPForgotPasswordScreenArguments agrs = ModalRoute.of(context)!
        .settings
        .arguments as OTPForgotPasswordScreenArguments;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        shadowColor: Colors.transparent,
      ),
      body: Body(phoneNumber: agrs.phoneNumber),
    );
  }
}

class OTPForgotPasswordScreenArguments {
  final String phoneNumber;

  OTPForgotPasswordScreenArguments({
    required this.phoneNumber,
  });
}
