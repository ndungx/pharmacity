import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryTabBarViewItem extends StatelessWidget {
  const CategoryTabBarViewItem({
    Key? key,
    required this.image,
    required this.name,
    required this.svg,
  }) : super(key: key);

  final String svg;
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: MediaQuery.of(context).size.height * 0.20,
      width: MediaQuery.of(context).size.width * 0.25,
      child: TextButton(
        onPressed: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            svg.isEmpty
                ? Image.network(
                    image,
                    fit: BoxFit.contain,
                    height: 50,
                  )
                : SvgPicture.asset(svg, fit: BoxFit.contain, height: 45),
            const SizedBox(height: 20),
            Text(
              name,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              style: const TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
