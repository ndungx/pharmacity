import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';
import 'components/body.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: const Text('Giỏ hàng của bạn'),
          ),
        ),
      ),
      body: const Body(),
    );
  }
}
