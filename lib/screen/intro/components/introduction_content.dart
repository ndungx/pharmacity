import 'package:flutter/material.dart';

class IntroductionContent extends StatelessWidget {
  const IntroductionContent({Key? key, this.title, this.text, this.image})
      : super(key: key);

  final String? title, image;
  final RichText? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        const Spacer(),
        const Spacer(),
        Image.asset(
          image!,
          height: 250,
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            title!,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: text!,
        ),
      ],
    );
  }
}
