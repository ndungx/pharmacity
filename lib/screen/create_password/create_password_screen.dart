import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';
import 'components/body.dart';

class CreatePasswordScreen extends StatelessWidget {
  const CreatePasswordScreen({Key? key}) : super(key: key);

  static String routeName = "/create_password";

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
