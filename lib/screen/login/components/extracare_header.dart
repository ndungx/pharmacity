import 'package:flutter/material.dart';

class ExtraCareHeader extends StatelessWidget {
  const ExtraCareHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Image.asset(
            'assets/images/extra_care_logo_colorless.png',
            height: 120,
            alignment: Alignment.centerRight,
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Image.asset(
            'assets/images/pharmacity_model.png',
            height: 120,
            alignment: Alignment.centerLeft,
          ),
        )
      ],
    );
  }
}
