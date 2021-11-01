import 'package:flutter/material.dart';
import 'package:pharmacity/components/add_to_cart_bms.dart';
import 'package:pharmacity/constants.dart';
import 'package:pharmacity/models/product.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 30,
      child: Material(
        color: kSuccessColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: InkWell(
          onTap: () {
            showModalBottomSheet<void>(
              context: context,
              constraints: BoxConstraints.loose(
                Size(
                  MediaQuery.of(context).size.width,
                  235,
                ),
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              builder: (_) {
                return AddToCartBottomModalSheet(product: product);
              },
            );
          },
          splashColor: Colors.white.withOpacity(.3),
          radius: 8,
          child: const Center(
            child: Text(
              'Thêm vào giỏ hàng',
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
