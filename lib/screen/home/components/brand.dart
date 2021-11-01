import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';

class Brand extends StatelessWidget {
  const Brand({Key? key, required this.img, required this.brandName})
      : super(key: key);

  final String img;
  final String brandName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {},
            splashColor: kSecondaryColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Image.network(
                      img,
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    brandName,
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
