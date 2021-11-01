import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharmacity/components/default_button.dart';
import 'package:pharmacity/constants.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: kSecondaryColor,
                    ),
                  ),
                ),
                child: TabBar(
                  controller: _tabController,
                  indicatorColor: kPrimaryColor,
                  labelColor: kPrimaryColor,
                  indicatorPadding: const EdgeInsets.symmetric(horizontal: 40),
                  unselectedLabelColor: Colors.grey,
                  tabs: const [
                    Tab(text: 'Tất cả'),
                    Tab(text: 'Chờ xác nhận'),
                    Tab(text: 'Đang xử lý'),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 40,
                  ),
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Column(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/order.svg',
                            height: 150,
                            color: Colors.grey.withOpacity(.7),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'Bạn chưa có đơn hàng nào',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 40),
                          DefaultButton(
                            text: 'Mua sắm ngay',
                            textColor: Colors.white,
                            backgroundColor: kSuccessColor,
                            enabled: true,
                            press: () {
                              Navigator.pushNamed(context, '/home');
                            },
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/order.svg',
                            height: 150,
                            color: Colors.grey.withOpacity(.7),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'Bạn chưa có đơn hàng nào',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 40),
                          DefaultButton(
                            text: 'Mua sắm ngay',
                            textColor: Colors.white,
                            backgroundColor: kSuccessColor,
                            enabled: true,
                            press: () {
                              Navigator.pushNamed(context, '/home');
                            },
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/order.svg',
                            height: 150,
                            color: Colors.grey.withOpacity(.7),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'Bạn chưa có đơn hàng nào',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 40),
                          DefaultButton(
                            text: 'Mua sắm ngay',
                            textColor: Colors.white,
                            backgroundColor: kSuccessColor,
                            enabled: true,
                            press: () {
                              Navigator.pushNamed(context, '/home');
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
