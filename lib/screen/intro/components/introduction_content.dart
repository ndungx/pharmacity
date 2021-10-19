import 'package:flutter/material.dart';

class IntroductionContent extends StatelessWidget {
  const IntroductionContent({Key? key, this.title, this.text, this.image})
      : super(key: key);

  final String? title, text, image;

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
        const Padding(padding: EdgeInsets.only(top: 20)),
        Text(
          text!,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.white,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
