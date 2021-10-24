import 'package:flutter/material.dart';
import 'package:pharmacity/components/default_button.dart';
import 'package:pharmacity/constants.dart';
import 'package:pharmacity/preferences_service.dart';
import 'package:pharmacity/screen/accept_terms/components/term_content.dart';
import 'package:pharmacity/screen/login/login_screen.dart';

class CheckTerm extends StatefulWidget {
  const CheckTerm({Key? key}) : super(key: key);

  @override
  _CheckTermState createState() => _CheckTermState();
}

class _CheckTermState extends State<CheckTerm> {
  final _prefs = PreferencesSerice();

  late bool _accepted;

  @override
  void initState() {
    super.initState();
    _accepted = false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (alertContext) => AlertDialog(
                insetPadding: const EdgeInsets.all(20),
                titlePadding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                contentPadding: const EdgeInsets.fromLTRB(10, 0, 10, 20),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                title: const Text(
                  'Điều khoản sử dụng & \nChính sách bảo mật thông tin cá nhân',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                  ),
                ),
                content: const TermContent(),
                actions: <Widget>[
                  DefaultButton(
                    text: 'Tôi đồng ý',
                    backgroundColor: kSuccessColor,
                    textColor: Colors.white,
                    press: () {
                      setState(() {
                        _accepted = true;
                      });
                      Navigator.of(alertContext).pop();
                    },
                  )
                ],
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Icon(
                    _accepted
                        ? Icons.check_box_rounded
                        : Icons.check_box_outline_blank_rounded,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Tôi đã đọc và đồng ý với điều khoản sử dụng ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        ),
                        TextSpan(
                          text:
                              'thỏa thuận người dùng Pharmacity, chính sách bảo mật',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _accepted
                  ? DefaultButton(
                      text: 'Tiếp tục',
                      backgroundColor: Colors.white,
                      textColor: const Color(0xFF1562F9),
                      press: () {
                        _prefs.setFirstTime(!_accepted);
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext _context) =>
                                const LoginScreen(),
                          ),
                        );
                      },
                    )
                  : const DefaultButton(
                      text: 'Tiếp tục',
                      backgroundColor: Color(0x3DFFFFFF),
                      textColor: kPrimaryColor,
                    )
            ],
          ),
        ),
      ],
    );
  }
}
