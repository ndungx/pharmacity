import 'package:flutter/material.dart';

class ResearchDisease extends StatelessWidget {
  const ResearchDisease({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
            width: double.infinity,
            child: Image.asset(
              'assets/images/research_disease_banner.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
            ),
          ),
        ),
      ],
    );
  }
}
