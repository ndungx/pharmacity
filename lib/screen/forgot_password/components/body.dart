import 'package:flutter/material.dart';
import 'package:pharmacity/components/phone_form.dart';
import 'package:pharmacity/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: kPrimaryColor,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
              ),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height -
                    24 -
                    AppBar().preferredSize.height,
                color: Colors.white,
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Quên mật khẩu',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF051E47),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Vui lòng nhập số điện thoại của bạn, Pharmacity sẽ gửi cho bạn một mã để đặt lại mật khẩu của mình.',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF717171),
                            fontWeight: FontWeight.w500),
                      ),
                      const Expanded(
                        flex: 3,
                        child: Center(child: PhoneForm()),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Bạn chưa có tài khoản?',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(width: 4),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacementNamed(
                                    context, '/register');
                              },
                              child: const Text(
                                'Đăng ký ngay',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w500,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
