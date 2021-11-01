import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  bool _selectedLatest = true;
  bool _selectedOldest = false;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kPrimaryColor,
      title: Container(
        padding: const EdgeInsets.only(left: 50),
        child: const Center(
          child: Text(
            'Lịch sử đơn hàng',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      actions: [
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: PopupMenuButton(
            offset: const Offset(0, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            onSelected: (value) {
              if (value == 'latest') {
                setState(() {
                  _selectedLatest = true;
                  _selectedOldest = false;
                });
              } else {
                setState(() {
                  _selectedLatest = false;
                  _selectedOldest = true;
                });
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'latest',
                child: Row(
                  children: [
                    _selectedLatest
                        ? Row(
                            children: const [
                              Icon(
                                Icons.check_circle_outline,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 10),
                            ],
                          )
                        : const SizedBox(width: 34),
                    const Text("Đơn hàng mới nhất"),
                  ],
                ),
                onTap: () {},
              ),
              PopupMenuItem(
                value: 'oldest',
                child: Row(
                  children: [
                    _selectedOldest
                        ? Row(
                            children: const [
                              Icon(
                                Icons.check_circle_outline,
                                color: Colors.grey,
                              ),
                              SizedBox(width: 10),
                            ],
                          )
                        : const SizedBox(width: 34),
                    const Text("Đơn hàng cũ nhất"),
                  ],
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
