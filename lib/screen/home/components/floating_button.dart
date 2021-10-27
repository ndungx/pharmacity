import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        width: 45,
        height: 45,
        child: FloatingActionButton(
          elevation: 4,
          backgroundColor: kPrimaryColor,
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => CartScreen(),
            //   ),
            // );
          },
          child: const Icon(Icons.shopping_cart_outlined, size: 20),
        ),
      ),
    );
  }
}
