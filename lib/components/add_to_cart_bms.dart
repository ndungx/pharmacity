import 'package:flutter/material.dart';
import 'package:pharmacity/components/default_button.dart';
import 'package:pharmacity/components/quantity_button.dart';
import 'package:pharmacity/constants.dart';
import 'package:pharmacity/models/cart.dart';
import 'package:pharmacity/models/product.dart';
import 'package:provider/src/provider.dart';
import 'package:simple_currency_format/simple_currency_format.dart';

class AddToCartBottomModalSheet extends StatelessWidget {
  const AddToCartBottomModalSheet({Key? key, required this.product})
      : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  border: Border.all(color: kSecondaryColor),
                ),
                child: Image.network(product.img[0]),
              ),
              const SizedBox(width: 20),
              SizedBox(
                width: MediaQuery.of(context).size.width - 185,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      currencyFormat(
                        product.price,
                        locale: 'vi_VN',
                        symbol: 'VNĐ',
                      ),
                      style: const TextStyle(
                        color: kPrimaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              Material(
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(
                    Icons.close,
                    color: kSecondaryColor,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Số lượng',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
              ),
              QuantityButton(),
            ],
          ),
          const SizedBox(height: 20),
          DefaultButton(
            text: 'Thêm vào giỏ hàng',
            textColor: Colors.white,
            backgroundColor: kPrimaryColor,
            press: () {
              context.read<CartModel>().addProduct(product);
              // print(context.read<CartModel>().totalPrice);
            },
          ),
        ],
      ),
    );
  }
}
