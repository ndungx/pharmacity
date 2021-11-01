import 'package:flutter/material.dart';
import 'package:pharmacity/components/product_card.dart';
import 'package:pharmacity/models/product.dart';
import 'package:pharmacity/screen/home/components/suggest_product_button.dart';

class SuggestProduct extends StatefulWidget {
  const SuggestProduct({Key? key}) : super(key: key);

  @override
  _SuggestProductState createState() => _SuggestProductState();
}

class _SuggestProductState extends State<SuggestProduct> {
  // late List productList;
  String productCategory = 'All';

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text(
            'Gợi ý hôm nay',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        const SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.all(4.0),
            child: SuggestProductButton(),
          ),
        ),
        const SizedBox(height: 10),
        GridView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 311,
          ),
          children: [
            ...List.generate(
              ProductModel.productsList.length,
              (index) => ProductCard(
                parentContext: context,
                heroTag: 'Gợi ý hôm nay',
                product: ProductModel.productsList[index],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
