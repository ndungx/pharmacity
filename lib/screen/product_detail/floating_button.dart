import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacity/constants.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: kPrimaryColor),
              borderRadius: BorderRadius.circular(10),
            ),
            child: FloatingActionButton.extended(
              heroTag: null,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              backgroundColor: Colors.white,
              onPressed: () {},
              label: SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: const Center(
                  child: Text(
                    'Mua ngay',
                    style: TextStyle(color: kPrimaryColor),
                  ),
                ),
              ),
            ),
          ),
          FloatingActionButton.extended(
            heroTag: null,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            backgroundColor: kSuccessColor,
            onPressed: () {},
            label: SizedBox(
              width: MediaQuery.of(context).size.width * 0.45,
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/cart.svg',
                      color: Colors.white,
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Thêm vào giỏ hàng',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
