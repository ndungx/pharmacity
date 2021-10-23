import 'package:flutter/material.dart';
import 'package:pharmacity/components/unordered_list.dart';
import 'package:pharmacity/constants.dart';

class MemberBenefits extends StatelessWidget {
  const MemberBenefits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image.asset(
            'assets/images/pharmacity_mascot.png',
            width: 190,
            height: 190,
          ),
        ),
        Row(
          children: [
            const Text(
              'Quyền lợi của thành viên',
              style: TextStyle(
                color: kPrimaryDarkColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 8),
            Image.asset(
              'assets/images/extra_care_logo_colored.png',
              width: 30,
              height: 30,
            )
          ],
        ),
        const BulletText(
          'Quà tặng sinh nhật',
          style: TextStyle(
            color: kPrimaryDarkColor,
            fontSize: 14,
            height: 2,
            fontWeight: FontWeight.w500,
          ),
        ),
        const BulletText(
          'Mua sản phẩm thứ 2 chỉ 1,000đ',
          style: TextStyle(
            color: kPrimaryDarkColor,
            fontSize: 14,
            height: 2,
            fontWeight: FontWeight.w500,
          ),
        ),
        const BulletText(
          'Sản phẩm giảm giá đến 50%',
          style: TextStyle(
            color: kPrimaryDarkColor,
            fontSize: 14,
            height: 2,
            fontWeight: FontWeight.w500,
          ),
        ),
        const BulletText(
          'Ưu đãi bất ngờ, thiết kế riêng cho từng thành viên',
          style: TextStyle(
            color: kPrimaryDarkColor,
            fontSize: 14,
            height: 2,
            fontWeight: FontWeight.w500,
          ),
        ),
        const BulletText(
          'Quà tặng những hạn VIP',
          style: TextStyle(
            color: kPrimaryDarkColor,
            fontSize: 14,
            height: 2,
            fontWeight: FontWeight.w500,
          ),
        ),
        const BulletText(
          'Tích điểm đến 6% cho khách hàng VIP',
          style: TextStyle(
            color: kPrimaryDarkColor,
            fontSize: 14,
            height: 2,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
