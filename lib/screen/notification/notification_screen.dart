import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';
import 'components/body.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Center(child: Text('Thông Báo')),
        actions: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: PopupMenuButton(
              offset: const Offset(0, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: const Text("Đánh dấu đã đọc"),
                  onTap: () {},
                ),
                PopupMenuItem(
                  child: const Text("Xóa tất cả"),
                  onTap: () {},
                )
              ],
            ),
          ),
        ],
      ),
      body: const Body(),
    );
  }
}
