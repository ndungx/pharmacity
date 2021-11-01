import 'package:flutter/material.dart';
import 'components/body.dart';
import 'custom_app_bar.dart';

class PurchaseOrderScreen extends StatelessWidget {
  const PurchaseOrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45),
        child: CustomAppBar(),
      ),
      body: Body(),
    );
  }
}
