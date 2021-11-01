import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';

class QuantityButton extends StatefulWidget {
  const QuantityButton({Key? key}) : super(key: key);

  @override
  State<QuantityButton> createState() => _QuantityButtonState();
}

class _QuantityButtonState extends State<QuantityButton> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                if (_quantity > 1) {
                  _quantity--;
                }
              });
            },
            child: const SizedBox(
              width: 35,
              height: 25,
              child: Icon(Icons.remove, color: kPrimaryColor, size: 16),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 3),
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3), color: Colors.white),
            child: Text(
              _quantity.toString(),
              style: const TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                _quantity++;
              });
            },
            child: const SizedBox(
              width: 35,
              height: 25,
              child: Icon(Icons.add, color: kPrimaryColor, size: 16),
            ),
          ),
        ],
      ),
    );
  }
}
