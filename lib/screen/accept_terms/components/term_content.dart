import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';

class TermContent extends StatelessWidget {
  const TermContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListBody(
        children: const [
          Text(
            'Điều khoản sử dụng',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kSuccessColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vulputate erat quis massa elementum commodo. Curabitur viverra tincidunt pulvinar. Maecenas nec diam ut odio eleifend vestibulum suscipit ut urna. Nullam eu massa lacinia, lobortis lectus eu, posuere mauris. Duis varius velit dolor, id ultrices augue consequat non. Sed maximus egestas urna, vel semper nunc venenatis quis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lobortis, metus eu posuere volutpat, mi nunc facilisis mauris, nec aliquam diam neque non augue. Nulla condimentum elit id mi lacinia, eget facilisis sem commodo. Pellentesque orci diam, vehicula at mi eget, dictum tempor purus. Vivamus sem felis, ultrices non leo et, consequat sagittis ligula. Nam aliquam ex purus, congue tempor lacus aliquam non.',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
            child: Text(
              '1. Giới thiệu về ứng dụng',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vulputate erat quis massa elementum commodo. Curabitur viverra tincidunt pulvinar. Maecenas nec diam ut odio eleifend vestibulum suscipit ut urna. Nullam eu massa lacinia, lobortis lectus eu, posuere mauris. Duis varius velit dolor, id ultrices augue consequat non. Sed maximus egestas urna, vel semper nunc venenatis quis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lobortis, metus eu posuere volutpat, mi nunc facilisis mauris, nec aliquam diam neque non augue. Nulla condimentum elit id mi lacinia, eget facilisis sem commodo. Pellentesque orci diam, vehicula at mi eget, dictum tempor purus. Vivamus sem felis, ultrices non leo et, consequat sagittis ligula. Nam aliquam ex purus, congue tempor lacus aliquam non.',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
            child: Text(
              '2. Giới thiệu về ứng dụng',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vulputate erat quis massa elementum commodo. Curabitur viverra tincidunt pulvinar. Maecenas nec diam ut odio eleifend vestibulum suscipit ut urna. Nullam eu massa lacinia, lobortis lectus eu, posuere mauris. Duis varius velit dolor, id ultrices augue consequat non. Sed maximus egestas urna, vel semper nunc venenatis quis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lobortis, metus eu posuere volutpat, mi nunc facilisis mauris, nec aliquam diam neque non augue. Nulla condimentum elit id mi lacinia, eget facilisis sem commodo. Pellentesque orci diam, vehicula at mi eget, dictum tempor purus. Vivamus sem felis, ultrices non leo et, consequat sagittis ligula. Nam aliquam ex purus, congue tempor lacus aliquam non.',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
            child: Text(
              '3. Giới thiệu về ứng dụng',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vulputate erat quis massa elementum commodo. Curabitur viverra tincidunt pulvinar. Maecenas nec diam ut odio eleifend vestibulum suscipit ut urna. Nullam eu massa lacinia, lobortis lectus eu, posuere mauris. Duis varius velit dolor, id ultrices augue consequat non. Sed maximus egestas urna, vel semper nunc venenatis quis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas lobortis, metus eu posuere volutpat, mi nunc facilisis mauris, nec aliquam diam neque non augue. Nulla condimentum elit id mi lacinia, eget facilisis sem commodo. Pellentesque orci diam, vehicula at mi eget, dictum tempor purus. Vivamus sem felis, ultrices non leo et, consequat sagittis ligula. Nam aliquam ex purus, congue tempor lacus aliquam non.',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
