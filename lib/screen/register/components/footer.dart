import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Bạn chưa có tài khoản ExtraCare?',
              style: TextStyle(
                color: kPrimaryDarkColor,
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Đăng ký ngay',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {},
          child: const Text(
            'Mua sắm không cần đăng nhập',
            style: TextStyle(
              color: kPrimaryDarkColor,
              fontSize: 16,
              decoration: TextDecoration.underline,
            ),
          ),
        )
      ],
    );
  }
}
