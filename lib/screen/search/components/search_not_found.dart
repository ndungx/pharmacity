import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacity/constants.dart';

class SearchNotFound extends StatelessWidget {
  const SearchNotFound({Key? key, required this.searchText}) : super(key: key);

  final String searchText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Column(
        children: [
          SvgPicture.asset(
            'assets/icons/search_not_found.svg',
            height: 100,
            color: kSecondaryColor.withOpacity(.5),
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
              children: [
                const TextSpan(
                  text:
                      'Tiếc quá! Pharmacity không tìm thấy nội dung nào phù hợp với từ khóa ',
                ),
                TextSpan(
                  text: '"$searchText"',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
