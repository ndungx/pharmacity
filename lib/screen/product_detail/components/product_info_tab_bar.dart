import 'package:flutter/material.dart';
import 'package:pharmacity/components/unordered_list.dart';
import 'package:pharmacity/constants.dart';

class ProductInformationTabBar extends StatefulWidget {
  const ProductInformationTabBar({Key? key}) : super(key: key);

  @override
  _ProductInfomationTabBarState createState() =>
      _ProductInfomationTabBarState();
}

class _ProductInfomationTabBarState extends State<ProductInformationTabBar>
    with SingleTickerProviderStateMixin {
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
      height: 450,
      // decoration: BoxDecoration(
      //   border: Border.all(color: kSecondaryColor),
      // ),
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
                Tab(text: 'Mô tả'),
                Tab(text: 'Thông tin'),
                Tab(text: 'Thương Hiệu'),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TabBarView(
                controller: _tabController,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Tên sản phẩm:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 6),
                      const Text('Sheer plaster'),
                      const SizedBox(height: 20),
                      Row(
                        children: const [
                          Text(
                            'Quy cách: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('72 x 18mm'),
                        ],
                      ),
                      const Text(
                        'Chỉ định:',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, height: 3),
                      ),
                      const Text(
                        'Băng keo thông thoáng, độ dính cao, ít thấm nước, giúp bảo vệ vết thương nhỏ, vết cắt, trầy, xước.',
                      ),
                      const Text(
                        'Hướng dẫn:',
                        style:
                            TextStyle(fontWeight: FontWeight.bold, height: 3),
                      ),
                      const Text(
                        'Làm vệ sinh da và lau khô trước khi dán băng. Thay băng hằng ngày. Bảo quản nơi thoáng mát và khô ráo',
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: const [
                          Text(
                            'Quy cách đóng gói: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Hộp 100 cái'),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: const [
                          Text(
                            'Xuất xứ thương hiệu: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Việt Nam'),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: const [
                          Text(
                            'Xuất xứ tại: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text('Việt Nam'),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: const [
                          BulletText(
                            'Brand ',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Pharmacity')
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: kSecondaryColor,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: Image.asset(
                                'assets/images/pharmacity_logo.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            'Pharmacity',
                            style: TextStyle(fontSize: 25),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Bên cạnh chuỗi Nhà thuốc tiện lợi, Pharmacity cho ra mắt những sản phẩm mang thương hiệu Pharmacity từ năm 2015 với các mặt hàng, hạng mục ngày càng đa dạng. Tính đến nay, Pharmacity đang sở hữu và phân phối hàng trăm mã sản phẩm mang thương hiệu riêng, thuộc các lĩnh vực chăm sóc sức khỏe, chăm sóc cá nhân, chăm sóc sắc đẹp, vitamin và thực phẩm chức năng cùng các sản phẩm tiện lợi.Với tiêu chí cam kết về chất lượng, giá cả phải chăng, phù hợp với nhu cầu của mọi khách hàng, trong thời gian tới Pharmacity tiếp tục phát triển thêm nhiều dòng sản phẩm mới mang thương hiệu riêng, hướng đến trở thành thương hiệu được người tiêu dùng trao trọn niềm tin và sức khỏe.',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
