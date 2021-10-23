import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'components/body.dart';

class CreatePassword extends StatelessWidget {
  const CreatePassword({Key? key}) : super(key: key);

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
