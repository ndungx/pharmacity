import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacity/components/default_button.dart';
import 'package:pharmacity/constants.dart';
import 'package:pharmacity/models/cart.dart';
import 'package:provider/provider.dart';
import 'package:provider/src/provider.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // var cart = context.watch<CartModel>();

    return
        // cart.products.isEmpty
        //     ?
        Container(
      color: kPrimaryColor,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/cart_empty.svg',
              color: kSecondaryColor,
              height: 150,
            ),
            const SizedBox(height: 20),
            const Text(
              'Bạn chưa có sản phẩm nào\ntrong giỏ hàng',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            const SizedBox(height: 20),
            DefaultButton(
              text: 'Mua sắm ngay',
              backgroundColor: kSuccessColor,
              height: 50,
              textColor: Colors.white,
              press: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
    // : ListView.builder(
    //     itemCount: cart.products.length,
    //     itemBuilder: (context, index) => ListTile(
    //       leading: const Icon(Icons.done),
    //       trailing: IconButton(
    //         icon: const Icon(Icons.remove_circle_outline),
    //         onPressed: () {
    //           cart.removeProduct(cart.products.elementAt(index).keys.first);
    //         },
    //       ),
    //       title: Text(
    //         cart.products[index].keys.first.title,
    //       ),
    //     ),
    //   );
  }
}
