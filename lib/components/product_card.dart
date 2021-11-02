import 'package:flutter/material.dart';
import 'package:pharmacity/components/add_to_cart_button.dart';
import 'package:pharmacity/constants.dart';
import 'package:pharmacity/models/product.dart';
import 'package:pharmacity/screen/product_detail/product_details_screen.dart';
import 'package:simple_currency_format/simple_currency_format.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.parentContext,
    required this.product,
    required this.heroTag,
  }) : super(key: key);

  final BuildContext parentContext;
  final Product product;
  final String heroTag;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 16),
      child: Container(
        width: MediaQuery.of(parentContext).size.width * 0.4,
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFDFDFDF), width: 1),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: const Offset(3, 4),
              blurRadius: 10,
              color: Colors.black45.withOpacity(0.1),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Material(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  ProductDetailScreen.routeName,
                  arguments: ProductDetailsArguments(
                    heroTag: heroTag,
                    product: product,
                  ),
                );
              },
              splashColor: kSecondaryColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Center(
                          child: heroTag.compareTo('Sản phẩm cùng danh mục') ==
                                  -1
                              ? Hero(
                                  tag: heroTag + ' ' + product.id.toString(),
                                  child: Image.network(
                                    product.img[0],
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : Image.network(
                                  product.img[0],
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                        ),
                        if (product.isDiscount ?? false)
                          product.discountPercent != null
                              ? Positioned(
                                  right: 0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 4, 10, 4),
                                      color: Colors.red,
                                      child: Text(
                                        ('-' +
                                                product.discountPercent
                                                    .toString()) +
                                            '%',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : Container(),
                      ],
                    ),
                    const SizedBox(height: 10),
                    product.isPharmacity ?? false
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              color: kPrimaryColor.withOpacity(.2),
                              width: 145,
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
                          )
                        : const SizedBox(height: 25),
                    const SizedBox(height: 10),
                    Text(
                      product.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 10),
                    product.isDiscount ?? false
                        ? product.discountPrice != null
                            ? Text(
                                currencyFormat(
                                  product.discountPrice!,
                                  locale: 'vi_VN',
                                  symbol: 'VNĐ',
                                ),
                                style: const TextStyle(
                                  color: kSecondaryColor,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.lineThrough,
                                  decorationThickness: 2,
                                ),
                              )
                            : const SizedBox(height: 20)
                        : const SizedBox(height: 15),
                    const SizedBox(height: 10),
                    Text(
                      currencyFormat(product.price,
                              locale: 'vi_VN', symbol: 'VNĐ') +
                          '/' +
                          product.productType,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 10),
                    AddToCartButton(product: product)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
