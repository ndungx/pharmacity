import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    this.press,
    this.textColor,
    this.backgroundColor,
    this.enabled = true,
  }) : super(key: key);

  final String text;
  final Function? press;
  final Color? textColor, backgroundColor;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          primary: backgroundColor,
          backgroundColor: backgroundColor,
        ),
        onPressed: enabled ? press as void Function()? : null,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
