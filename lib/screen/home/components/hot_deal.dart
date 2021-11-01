import 'package:flutter/material.dart';
import 'package:pharmacity/components/product_card.dart';
import 'package:pharmacity/constants.dart';
import 'package:pharmacity/models/product.dart';

class HotDeal extends StatelessWidget {
  const HotDeal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Săn deal giá rẻ - bảo vệ sức khỏe',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => AllHotDeal(),
                //   ),
                // );
              },
              child: const Text(
                'Xem tất cả',
                style: TextStyle(
                  color: kPrimaryColor,
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          primary: false,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                ProductModel.productsList.length,
                (index) => ProductCard(
                  parentContext: context,
                  heroTag: 'Săn deal giá rẻ - bảo vệ sức khỏe',
                  product: ProductModel.productsList[index],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
