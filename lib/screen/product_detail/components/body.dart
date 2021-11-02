import 'package:flutter/material.dart';
import 'package:pharmacity/components/member_benefits.dart';
import 'package:pharmacity/components/product_card.dart';
import 'package:pharmacity/constants.dart';
import 'package:pharmacity/models/product.dart';
import 'package:simple_currency_format/simple_currency_format.dart';
import 'product_images.dart';
import 'product_info_tab_bar.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product, required this.heroTag})
      : super(key: key);

  final Product product;
  final String heroTag;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductImages(
              product: product,
              heroTag: heroTag,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  product.isPharmacity ?? false
                      ? Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Container(
                                width: 145,
                                color: kPrimaryColor.withOpacity(.2),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Row(
                                    children: [
                                      const Text(
                                        'Thương hiệu',
                                        style: TextStyle(
                                          color: Color(0xFF6E6D6B),
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.asset(
                                          'assets/images/pharmacity_logo.png',
                                          width: 60,
                                          fit: BoxFit.cover,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                          ],
                        )
                      : const SizedBox(height: 15),
                  Text(
                    product.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    currencyFormat(product.price,
                        locale: 'vi_VN', symbol: 'VNĐ'),
                    style: const TextStyle(
                      color: kSuccessColor,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      const Text(
                        'Mua hàng và tích ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        currencyFormat(
                          product.extraCarePoint,
                          locale: 'vi_VN',
                          symbol: '',
                        ),
                        style: const TextStyle(
                          color: kSuccessColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const Text(
                        'điểm ExtraCare  ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const MemberBenefits(),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            const ProductInformationTabBar(),
            const Padding(
              padding: EdgeInsets.only(left: 20, bottom: 10),
              child: Text(
                'Sản phẩm cùng danh mục',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SingleChildScrollView(
                primary: false,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      ProductModel.productsList.length,
                      (index) => ProductCard(
                        parentContext: context,
                        heroTag: 'Sản phẩm cùng danh mục',
                        product: ProductModel.productsList[index],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
