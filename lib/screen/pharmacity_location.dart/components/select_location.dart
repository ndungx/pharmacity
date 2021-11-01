import 'package:flutter/material.dart';
import 'package:pharmacity/constants.dart';
import 'find_location.dart';

class SelectLocation extends StatefulWidget {
  const SelectLocation({Key? key}) : super(key: key);

  @override
  _SelectLocationState createState() => _SelectLocationState();
}

class _SelectLocationState extends State<SelectLocation> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _selected ? const FindLocation() : _buildLocation(),
      ],
    );
  }

  Widget _buildLocation() {
    return Material(
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: () {
          setState(() {
            _selected = true;
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Expanded(
                child: Text(
                  '183 Nơ Trang Long, Phường 11, Bình Thạnh, Thành phố Hồ Chí Minh, Việt Nam',
                  style: TextStyle(
                    color: kPrimaryDarkColor,
                  ),
                ),
              ),
              Icon(Icons.keyboard_arrow_down),
            ],
          ),
        ),
      ),
    );
  }
}
