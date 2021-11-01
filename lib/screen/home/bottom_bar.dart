import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacity/constants.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key, required this.pageIndex}) : super(key: key);

  final ValueChanged<int> pageIndex;

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      backgroundColor: Colors.white,
      activeColor: kPrimaryColor,
      color: Colors.black54,
      style: TabStyle.flip,
      items: [
        TabItem(
          icon: SvgPicture.asset(
            'assets/icons/home.svg',
            height: 25,
            alignment: Alignment.center,
          ),
          title: 'Trang chủ',
          activeIcon: Stack(
            alignment: Alignment.center,
            children: [
              Icon(
                Icons.circle,
                color: kPrimaryColor.withOpacity(.1),
                size: 40,
              ),
              SvgPicture.asset(
                'assets/icons/home.svg',
                color: kPrimaryColor,
                height: 25,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
        TabItem(
          icon: SvgPicture.asset(
            'assets/icons/product_catalog.svg',
            height: 25,
            alignment: Alignment.center,
          ),
          title: 'Danh mục',
          activeIcon: Stack(
            alignment: Alignment.center,
            children: [
              Icon(
                Icons.circle,
                color: kPrimaryColor.withOpacity(.1),
                size: 40,
              ),
              SvgPicture.asset(
                'assets/icons/product_catalog.svg',
                color: kPrimaryColor,
                height: 25,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
        TabItem(
          icon: SvgPicture.asset(
            'assets/icons/purchase_order.svg',
            height: 25,
            alignment: Alignment.center,
          ),
          title: 'Đơn hàng',
          activeIcon: Stack(
            alignment: Alignment.center,
            children: [
              Icon(
                Icons.circle,
                color: kPrimaryColor.withOpacity(.1),
                size: 40,
              ),
              SvgPicture.asset(
                'assets/icons/purchase_order.svg',
                color: kPrimaryColor,
                height: 25,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
        TabItem(
          icon: SvgPicture.asset(
            'assets/icons/user.svg',
            height: 25,
            alignment: Alignment.center,
          ),
          title: 'Cá nhân',
          activeIcon: Stack(
            alignment: Alignment.center,
            children: [
              Icon(
                Icons.circle,
                color: kPrimaryColor.withOpacity(.1),
                size: 40,
              ),
              SvgPicture.asset(
                'assets/icons/user.svg',
                color: kPrimaryColor,
                height: 25,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ],
      onTap: (int index) {
        pageIndex(index);
      },
    );
  }
}
