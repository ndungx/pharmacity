import 'package:flutter/material.dart';
import 'package:pharmacity/components/member_benefits.dart';
import 'package:pharmacity/constants.dart';

class PharmacityHeader extends StatelessWidget {
  const PharmacityHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              'assets/images/pharmacity_logo.png',
              height: 30,
            ),
            const SizedBox(width: 10),
            const Text(
              'xin chào!',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kSuccessColor,
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        const Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text:
                    'Hãy đăng nhập để được hưởng các đặc quyền riêng dành cho thành viên ',
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: kPrimaryDarkColor,
                ),
              ),
              WidgetSpan(child: MemberBenefits()),
            ],
          ),
        ),
      ],
    );
  }
}
