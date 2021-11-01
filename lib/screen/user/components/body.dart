import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacity/components/default_button.dart';
import 'package:pharmacity/components/member_benefits.dart';
import 'package:pharmacity/constants.dart';
import 'package:pharmacity/screen/user/components/user_menu.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: kPrimaryColor,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Bạn chưa đăng nhập',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'Hãy đăng nhập để được hưởng các đặc quyển riêng dành cho thành viên ',
                            ),
                            WidgetSpan(child: MemberBenefits())
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      DefaultButton(
                        text: 'Đăng nhập ngay',
                        height: 50,
                        textColor: Colors.white,
                        backgroundColor: kPrimaryColor,
                        enabled: true,
                        press: () {
                          Navigator.pushReplacementNamed(context, '/login');
                        },
                      )
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: UserMenu(
                        text: 'Quy chế xếp hạng thành viên ExtraCare',
                        icon: Icons.card_membership,
                        press: () {},
                      ),
                    ),
                    Container(
                      height: 20,
                      color: kSecondaryColor.withOpacity(.5),
                    ),
                    UserMenu(
                      text: 'Trung tâm trợ giúp',
                      icon: Icons.question_answer_outlined,
                      borderColor: kSecondaryColor.withOpacity(.5),
                      press: () {},
                    ),
                    UserMenu(
                      text: 'Cài đặt',
                      borderColor: kSecondaryColor.withOpacity(.5),
                      icon: Icons.settings_outlined,
                      press: () {},
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/counselor.svg',
                          height: 30,
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              '1800 6821',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kPrimaryColor,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              'Tư vấn đặt hàng',
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
