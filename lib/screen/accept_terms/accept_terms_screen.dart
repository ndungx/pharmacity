import 'package:flutter/material.dart';
import 'components/body.dart';

class AcceptTermsScreen extends StatelessWidget {
  const AcceptTermsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: const Body(),
    );
  }
}
