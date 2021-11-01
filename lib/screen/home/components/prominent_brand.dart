import 'package:flutter/material.dart';
import 'package:pharmacity/screen/home/components/brand.dart';
import 'package:pharmacity/constants.dart';

class ProminentBrand extends StatelessWidget {
  const ProminentBrand({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> _brandList = const [
    {
      'img':
          'https://s3-ap-southeast-1.amazonaws.com/pharmacity-ecm-asm-dev/thang-9/brand-list/pmc.webp',
      'brandName': 'Pharmacity',
    },
    {
      'img':
          'https://s3-ap-southeast-1.amazonaws.com/pharmacity-ecm-asm-dev/thang-9/brand-list/2abbott.webp',
      'brandName': 'Abbott',
    },
    {
      'img':
          'https://s3-ap-southeast-1.amazonaws.com/pharmacity-ecm-asm-dev/thang-9/brand-list/3microlife.webp',
      'brandName': 'Microlife',
    },
    {
      'img':
          'https://s3-ap-southeast-1.amazonaws.com/pharmacity-ecm-asm-dev/thang-9/brand-list/4blackmore.webp',
      'brandName': 'Blackmores',
    },
    {
      'img':
          'https://s3-ap-southeast-1.amazonaws.com/pharmacity-ecm-asm-dev/thang-9/brand-list/5vitabella.webp',
      'brandName': 'VitaBella',
    },
    {
      'img':
          'https://s3-ap-southeast-1.amazonaws.com/pharmacity-ecm-asm-dev/thang-9/brand-list/6loreal.webp',
      'brandName': "L'oreal",
    },
    {
      'img':
          'https://s3-ap-southeast-1.amazonaws.com/pharmacity-ecm-asm-dev/thang-9/brand-list/7vitabiotics.webp',
      'brandName': 'Vitabiotics',
    },
    {
      'img':
          'https://s3-ap-southeast-1.amazonaws.com/pharmacity-ecm-asm-dev/thang-9/brand-list/8mega.webp',
      'brandName': 'Mega Lifesciences',
    },
    {
      'img':
          'https://s3-ap-southeast-1.amazonaws.com/pharmacity-ecm-asm-dev/thang-9/brand-list/9msd.webp',
      'brandName': 'Merck Sharp & Dohme ',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Thương hiệu nổi bật',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => AllBrand(),
                //   ),
                // );
              },
              child: const Text(
                'Xem tất cả',
                style: TextStyle(
                  color: kPrimaryColor,
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          primary: false,
          scrollDirection: Axis.horizontal,
          child: Row(
              children: _brandList
                  .map((brand) => Brand(
                        img: brand['img'],
                        brandName: brand['brandName'],
                      ))
                  .toList()),
        ),
      ],
    );
  }
}
