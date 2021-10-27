import 'package:flutter/material.dart';
import 'package:pharmacity/components/default_button.dart';
import 'package:pharmacity/constants.dart';
import 'package:simple_currency_format/simple_currency_format.dart';

class Product extends StatelessWidget {
  const Product({
    Key? key,
    required this.parentContext,
    required this.img,
    required this.isDiscount,
    required this.title,
    this.discountPrice,
    this.discountPercent,
    required this.price,
    required this.productType,
    this.isPharmacity = false,
  }) : super(key: key);

  final BuildContext parentContext;
  final String img;
  final bool? isPharmacity;
  final bool? isDiscount;
  final String title;
  final int? discountPrice;
  final double? discountPercent;
  final int price;
  final String productType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 16),
      child: Container(
        width: MediaQuery.of(parentContext).size.width * 0.4,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: const Offset(3, 4),
              blurRadius: 10,
              color: Colors.black45.withOpacity(0.07),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Material(
            child: InkWell(
              onTap: () {},
              splashColor: kSecondaryColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Center(
                          child: Image.network(
                            img,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        if (isDiscount ?? false)
                          discountPercent != null
                              ? Positioned(
                                  right: 0,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Container(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 4, 10, 4),
                                      color: Colors.red,
                                      child: Text(
                                        ('-' + discountPercent.toString()) +
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
                              : Container(height: 5),
                      ],
                    ),
                    const SizedBox(height: 10),
                    isPharmacity ?? false
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
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
                          )
                        : const SizedBox(height: 30),
                    const SizedBox(height: 10),
                    Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 10),
                    isDiscount ?? false
                        ? discountPrice != null
                            ? Text(
                                currencyFormat(
                                  discountPrice!,
                                  locale: 'vi_VN',
                                  symbol: 'VNĐ',
                                ),
                                style: const TextStyle(
                                  color: kSecondaryColor,
                                  decoration: TextDecoration.lineThrough,
                                  decorationThickness: 2,
                                ),
                              )
                            : const SizedBox(
                                height: 20,
                              )
                        : const SizedBox(height: 10),
                    const SizedBox(height: 10),
                    Text(
                      currencyFormat(price, locale: 'vi_VN', symbol: 'VNĐ') +
                          '/' +
                          productType,
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 10),
                    DefaultButton(
                      text: 'Thêm vào giỏ hàng',
                      backgroundColor: const Color(0xFF5DAC46),
                      textColor: Colors.white,
                      height: 30,
                      enabled: true,
                      textStyle:
                          const TextStyle(fontSize: 12, color: Colors.white),
                      press: () {},
                    )
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
