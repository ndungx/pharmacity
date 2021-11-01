import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacity/constants.dart';
import 'package:pharmacity/screen/cart/cart_screen.dart';

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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CartScreen(),
              ),
            );
          },
          child: SvgPicture.asset(
            'assets/icons/floating_button_cart.svg',
            height: 30,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }
}
