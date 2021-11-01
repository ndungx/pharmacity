import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';
import 'package:pharmacity/models/product.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({Key? key, required this.product, required this.heroTag})
      : super(key: key);

  final Product product;
  final String heroTag;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: widget.heroTag + ' ' + widget.product.id.toString(),
          child: Image.network(
            widget.product.img[selectedImage],
            fit: BoxFit.cover,
            height: 500,
          ),
        ),
        widget.product.img.length > 1
            ? SizedBox(
                height: 500,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ...List.generate(
                        widget.product.img.length,
                        (index) => buildSmallProductPreview(index),
                      ),
                    ],
                  ),
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }

  GestureDetector buildSmallProductPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: AnimatedContainer(
        duration: kAnimationDuration,
        margin: const EdgeInsets.only(right: 15),
        padding: const EdgeInsets.all(8),
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: selectedImage == index ? kPrimaryColor : Colors.grey,
          ),
        ),
        child: Image.network(widget.product.img[index]),
      ),
    );
  }
}
