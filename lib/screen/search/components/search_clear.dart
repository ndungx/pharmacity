import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';
import 'suggest_keyword.dart';

class SearchClear extends StatelessWidget {
  const SearchClear({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: kSecondaryColor.withOpacity(.7), width: 1),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Tìm kiếm phổ biến',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              child: SuggestKeyword(),
            )
          ],
        ),
      ),
    );
  }
}
