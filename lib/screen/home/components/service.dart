import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacity/constants.dart';

class Service extends StatelessWidget {
  const Service({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> _servicesList = const [
    {
      'icon': 'assets/icons/free_ship.svg',
      'title': 'MIỄN PHÍ VẬN CHUYỂN',
      'description': 'Áp dụng cho đơn hàng trên 300,000 VNĐ.',
    },
    {
      'icon': 'assets/icons/good_medicine_cheap_price.svg',
      'title': 'THUỐC TỐT GIÁ RẺ',
      'description': 'Nếu không rẻ, hoàn tiền chênh lệch.',
    },
    {
      'icon': 'assets/icons/nearby_pharmacy.svg',
      'title': 'NHÀ THUỐC GẦN BẠN',
      'description': 'Tìm ngay nhà thuốc gần nơi bạn sinh sống',
    },
    {
      'icon': 'assets/icons/earn_points.svg',
      'title': 'TÍCH LŨY ĐIỂM',
      'description': 'Tìm ngay nhà thuốc gần nơi bạn sinh sống',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20.0,
        mainAxisExtent: 130.0,
      ),
      children: _servicesList
          .map((service) => _buildService(
                icon: service['icon'],
                title: service['title'],
                description: service['description'],
              ))
          .toList(),
    );
  }

  Widget _buildService(
      {required String icon,
      required String title,
      required String description}) {
    return Column(
      children: [
        SvgPicture.asset(
          icon,
          alignment: Alignment.center,
        ),
        const SizedBox(height: 20),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(color: kPrimaryColor, fontSize: 14),
        ),
        const SizedBox(height: 5),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.grey, fontSize: 12),
        )
      ],
    );
  }
}
