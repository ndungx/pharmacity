import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';

class UserMenu extends StatelessWidget {
  const UserMenu({
    Key? key,
    required this.text,
    required this.icon,
    this.press,
    this.borderColor,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback? press;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: const EdgeInsets.all(20),
        backgroundColor: Colors.white,
        side: BorderSide(color: borderColor ?? Colors.transparent),
      ),
      onPressed: press,
      child: Row(
        children: [
          Icon(icon, color: Colors.black87),
          const SizedBox(width: 20),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(color: kPrimaryDarkColor),
            ),
          ),
          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
