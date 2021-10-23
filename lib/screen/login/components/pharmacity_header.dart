import 'package:flutter/material.dart';
import 'package:pharmacity/components/default_button.dart';
import 'package:pharmacity/constants.dart';
import 'pharmacity_header_ad_content.dart';

class PharmacityHeader extends StatelessWidget {
  const PharmacityHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Row(
          children: [
            const Expanded(
              child: Text(
                'Hãy đăng nhập để được hưởng các đặc quyền riêng dành cho thành viên',
                style: TextStyle(
                  fontSize: 11.5,
                  fontWeight: FontWeight.w500,
                  color: kPrimaryDarkColor,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (alertContext) => AlertDialog(
                    insetPadding: const EdgeInsets.symmetric(horizontal: 10),
                    contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    content: const MemberBenefits(),
                    actions: <Widget>[
                      DefaultButton(
                        text: 'Đóng',
                        backgroundColor: kPrimaryColor,
                        textColor: Colors.white,
                        press: () {
                          Navigator.of(alertContext).pop();
                        },
                      )
                    ],
                  ),
                );
              },
              child: const Icon(
                Icons.error_rounded,
                size: 18,
                color: Color(0xFFC2C2C2),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
