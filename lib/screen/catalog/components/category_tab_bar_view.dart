import 'package:flutter/material.dart';
import 'package:pharmacity/models/category_detail.dart';
import 'category_tab_bar_view_item.dart';

class CategoryTabBarView extends StatelessWidget {
  final List<CategoryDetail> list;

  const CategoryTabBarView({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return CategoryTabBarViewItem(
          svg: list[index].svg ?? '',
          image: list[index].img ??
              'https://www.mmaglobal.com/files/logos/farma.png',
          name: list[index].title,
        );
      },
    );
  }
}
