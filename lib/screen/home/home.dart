import 'package:flutter/material.dart';
import 'package:pharmacity/components/scroll_to_hide_widget.dart';
import 'package:pharmacity/models/cart.dart';
import 'package:pharmacity/models/product.dart';
import 'package:pharmacity/screen/catalog/catalog_screen.dart';
import 'package:pharmacity/screen/purchase_order/purchase_order_screen.dart';
import 'package:pharmacity/screen/user/user_screen.dart';
import 'package:provider/provider.dart';
import 'bottom_bar.dart';
import 'components/body.dart';
import 'floating_button.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  static String routeName = "/home";

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late ScrollController controller;

  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    controller = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => ProductModel()),
        ChangeNotifierProxyProvider<ProductModel, CartModel>(
          create: (context) => CartModel(),
          update: (context, product, cart) {
            if (cart == null) {
              throw ArgumentError.notNull('cart');
            }
            cart.product = product;
            return cart;
          },
        )
      ],
      child: Scaffold(
        body: _buildPage(_selectedIndex),
        floatingActionButton: const FloatingButton(),
        bottomNavigationBar: ScrollToHideWidget(
          controller: controller,
          child: BottomBar(pageIndex: _onItemTapped),
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return Body(controller: controller);
      case 1:
        return const CategoryScreen();
      case 2:
        return const PurchaseOrderScreen();
      case 3:
        return const UserScreen();
      default:
        return Body(controller: controller);
    }
  }
}
