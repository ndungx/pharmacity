import 'package:flutter/material.dart';
import 'package:pharmacity/components/default_button.dart';
import 'package:pharmacity/constants.dart';

class FindLocation extends StatelessWidget {
  const FindLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Tìm địa chỉ nhà thuốc Pharmacity',
            style: TextStyle(
              color: kPrimaryDarkColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 15),
          Material(
            child: InkWell(
              onTap: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(
                    Icons.location_on_outlined,
                    size: 20,
                    color: kSuccessColor,
                  ),
                  Text(
                    'Tìm nhà thuốc gần bạn',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: kSuccessColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Form(
            child: Column(
              children: [
                TextFormField(
                  enabled: false,
                  decoration: const InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2),
                    ),
                    isDense: true,
                    hintText:
                        '183 Nơ Trang Long, Phường 11, Bình Thạnh, Thành phố Hồ Chí Minh, Việt Nam',
                    hintStyle: TextStyle(color: Colors.black, height: 2),
                    label: Text(
                      'Tỉnh thành/Quận huyện/Phường xã',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down,
                      size: 20,
                      color: kSuccessColor,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  enabled: false,
                  decoration: const InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: kSecondaryColor, width: 2),
                    ),
                    isDense: true,
                    hintText: '183, Nơ Trang Long',
                    hintStyle: TextStyle(color: Colors.black, height: 2),
                    label: Text(
                      'Số nhà, tên đường',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                    suffixIcon: Icon(
                      Icons.keyboard_arrow_down,
                      size: 20,
                      color: kSuccessColor,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                DefaultButton(
                  text: 'Tìm kiếm',
                  height: 50,
                  textColor: Colors.white,
                  backgroundColor: kSuccessColor,
                  enabled: true,
                  press: () {},
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
