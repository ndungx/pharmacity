import 'package:flutter/material.dart';
import 'package:pharmacity/screen/accept_terms/components/check_term.dart';
import 'package:pharmacity/screen/intro/components/introduction_content.dart';
import 'check_term.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/intro_background.png',
            fit: BoxFit.cover,
            height: double.infinity,
            alignment: Alignment.topCenter,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 8, 16),
            child: Column(
              children: [
                Expanded(
                  flex: 6,
                  child: IntroductionContent(
                    image: 'assets/images/intro_5.png',
                    title: 'Pharmacity xin chào!',
                    text: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          height: 1.5,
                        ),
                        text:
                            'Đăng kí nhận thông báo, thông tin khuyến mãi và ưu đãi mỗi ngày từ Pharmacity',
                      ),
                    ),
                  ),
                ),
                const CheckTerm(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
