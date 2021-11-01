import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';

class AdvertisementCarousel extends StatefulWidget {
  const AdvertisementCarousel({Key? key}) : super(key: key);

  @override
  _AdvertisementCarouselState createState() => _AdvertisementCarouselState();
}

class _AdvertisementCarouselState extends State<AdvertisementCarousel> {
  final List<String> imgList = [
    'https://image.pharmacity.vn/live/uploads/2021/10/SP-GIA-1K-102021-banner-web-desktop-1400x417.jpg',
    'https://s3-ap-southeast-1.amazonaws.com/pharmacity-ecm-asm-dev/banner-thang-1021/1096x333-1.webp',
    'https://s3-ap-southeast-1.amazonaws.com/pharmacity-ecm-asm-dev/banner-thang-1021/glucerna-websitebanner-x4-01.webp',
    'https://s3-ap-southeast-1.amazonaws.com/pharmacity-ecm-asm-dev/banner-thang-1021/banner-921x280.webp',
    'https://s3-ap-southeast-1.amazonaws.com/pharmacity-ecm-asm-dev/banner-thang-1021/website-3x1.webp',
    'https://s3-ap-southeast-1.amazonaws.com/pharmacity-ecm-asm-dev/banner-thang-1021/nhuom-toc-tai-nha-banner-102021-01.webp'
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 180,
              autoPlay: true,
              viewportFraction: 1.0,
              enableInfiniteScroll: true,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() {
                  currentPage = index;
                });
              },
            ),
            items: imgList
                .map(
                  (item) => Image.network(item, fit: BoxFit.cover, width: 1000),
                )
                .toList(),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                imgList.length,
                (index) => _buildDot(index: index),
              ),
            ),
          ),
        ],
      ),
    );
  }

  AnimatedContainer _buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 15),
      height: currentPage == index ? 6 : 4,
      width: currentPage == index ? 6 : 4,
      decoration: BoxDecoration(
        color: currentPage == index
            ? const Color(0xFFFFFFFF)
            : const Color(0x77FFFFFF),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
