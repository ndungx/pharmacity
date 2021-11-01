import 'package:flutter/material.dart';
import 'package:pharmacity/components/product_card.dart';
import 'package:pharmacity/constants.dart';
import 'package:pharmacity/models/product.dart';

class PharmacityProduct extends StatelessWidget {
  const PharmacityProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Chỉ có tại Pharmacity',
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
                //     builder: (context) => AllPharmacityProduct(),
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
              ...ProductModel.productsList
                  .map((product) => ProductCard(
                        parentContext: context,
                        heroTag: 'Chỉ có tại Pharmacity',
                        product: product,
                      ))
                  .toList(),
              // ...List.generate(
              //   ProductModel.productsList.length,
              //   (index) => ProductCard(
              //     parentContext: context,
              //     product: ProductModel.productsList[index],
              //   ),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
