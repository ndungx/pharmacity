import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';

import 'components/body.dart';

class PharmacityLocationScreen extends StatelessWidget {
  const PharmacityLocationScreen({Key? key}) : super(key: key);

  static String routeName = '/pharmacity_location';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        title: const Text(
          'Hệ thống nhà thuốc Pharmacity',
          style: TextStyle(overflow: TextOverflow.ellipsis),
        ),
      ),
      body: const Body(),
    );
  }
}
