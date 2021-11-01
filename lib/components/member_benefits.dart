import 'package:flutter/material.dart';
import 'package:pharmacity/components/default_button.dart';
import 'package:pharmacity/constants.dart';
import 'package:pharmacity/components/member_benefits_content.dart';

class MemberBenefits extends StatelessWidget {
  const MemberBenefits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (alertContext) => AlertDialog(
            insetPadding: const EdgeInsets.symmetric(horizontal: 10),
            contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
            content: const MemberBenefitsContent(),
            actions: [
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
        Icons.help,
        size: 18,
        color: Color(0xFFC2C2C2),
      ),
    );
  }
}
