import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';
import 'package:pharmacity/screen/create_password/create_password_screen.dart';

class CreatePasswordBox extends StatelessWidget {
  const CreatePasswordBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, CreatePasswordScreen.routeName),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color(0xFFFFFADD),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: const Color(0xFFFEA43C),
          ),
        ),
        child: RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 12,
              color: kPrimaryDarkColor,
            ),
            children: [
              TextSpan(
                text: 'Bạn đã là thành viên Extracare vui lòng nhấp ',
              ),
              TextSpan(
                text: 'tạo mật khẩu ',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: kSuccessColor,
                  decoration: TextDecoration.underline,
                ),
              ),
              TextSpan(
                text:
                    'để tiếp tục sử dụng. Tất cả thông tin tài khoản và điểm tích lũy đều không thay đổi.',
              )
            ],
          ),
        ),
      ),
    );
  }
}
