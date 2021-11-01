import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacity/constants.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({Key? key}) : super(key: key);

  final List<String> _items = const [
    'Băng cá nhân màu da Pharmacity (100 cái/hộp)',
    'Băng cá nhân trẻ em Pharmacity (10 miếng/hộp)',
    'Băng keo y tế Pharmacity (1.25cm x 5m)',
    'Bông tắm Pharmacity',
    'Bông tẩy trang cao cấp Pharmacity (80 miếng/hộp)',
    'Bông tẩy trang đa dụng Pharmacity (80 miếng/hộp)',
    'Bông viên tiệt trùng Pharmacity 2 x 2cm (20 viên/gói)',
    'Bông y tế Pharmacity (25g)',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: kSecondaryColor.withOpacity(.7), width: 1),
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: Column(
            children: [
              ...List.generate(
                _items.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: SvgPicture.asset(
                          'assets/icons/search.svg',
                          height: 25,
                        ),
                      ),
                      Expanded(
                        child: Text(
                          _items[index],
                          style: const TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
