import 'package:flutter/material.dart';
import 'package:pharmacity/components/default_button.dart';
import 'package:pharmacity/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _haveNoti = false;

    return _haveNoti
        ? SingleChildScrollView(child: Container())
        : Container(
            color: kPrimaryColor,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              width: double.infinity,
              height: MediaQuery.of(context).size.height - 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.notifications_active,
                    size: 150,
                    color: kSecondaryColor,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Bạn chưa có thông báo mới nào.\nHãy quay trở lại sau!',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  const SizedBox(height: 20),
                  DefaultButton(
                    text: 'Trở lại trang chủ',
                    backgroundColor: kPrimaryColor,
                    height: 50,
                    textColor: Colors.white,
                    press: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          );
  }
}
