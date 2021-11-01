import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';

class SuggestKeyword extends StatelessWidget {
  const SuggestKeyword({Key? key}) : super(key: key);

  final List<String> suggestions = const [
    'Pharmacity',
    'Covid test kit',
    'Khẩu trang',
    'Vitamin',
    'Sát khuẩn',
    'Tã sữa',
    'Thuốc ho',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 20,
          mainAxisExtent: 33,
          // childAspectRatio: (1 / .2),
        ),
        children: [
          ...List.generate(
            suggestions.length,
            (index) => Container(
              height: 20,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: kSecondaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                suggestions[index],
                style: const TextStyle(fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }
}
