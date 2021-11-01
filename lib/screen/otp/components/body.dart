import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:pharmacity/components/default_button.dart';
import 'package:pharmacity/constants.dart';
import 'count_down.dart';
import 'hide_phone_number.dart';

class Body extends StatefulWidget {
  const Body({Key? key, required this.phoneNumber}) : super(key: key);

  final String phoneNumber;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late bool _isFilled;

  @override
  void initState() {
    super.initState();
    _isFilled = false;
  }

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
                        'Nhận mã xác nhận',
                        style: TextStyle(
                          color: Color(0xFF10284F),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Text(
                            'Nhập 4 chữ số mà Pharmacity đã gửi qua số điện thoại ',
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF717171),
                                fontWeight: FontWeight.w500),
                          ),
                          HidePhoneNumber(
                            phoneNumber: widget.phoneNumber,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            textColor: kPrimaryColor,
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: OTPTextField(
                          length: 4,
                          keyboardType: TextInputType.number,
                          width: MediaQuery.of(context).size.width,
                          textFieldAlignment: MainAxisAlignment.spaceAround,
                          fieldWidth: 55,
                          fieldStyle: FieldStyle.box,
                          outlineBorderRadius: 10,
                          style: const TextStyle(fontSize: 24),
                          onCompleted: (pin) {
                            setState(() {
                              _isFilled = true;
                            });
                          },
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Mã xác thực sẽ hết hiệu lực sau '),
                          CountDown(),
                        ],
                      ),
                      const SizedBox(height: 50),
                      _isFilled
                          ? DefaultButton(
                              text: 'Xác nhận',
                              textColor: Colors.white,
                              backgroundColor: kPrimaryColor,
                              enabled: true,
                              press: () {
                                // Navigator.push(
                                //   context,
                                //   MaterialPageRoute(
                                //     builder: (context) => (),
                                //   ),
                                // );
                              },
                            )
                          : const DefaultButton(
                              text: 'Xác nhận',
                              textColor: Colors.white,
                              backgroundColor: kSecondaryColor,
                            )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
