import 'package:flutter/material.dart';
import 'package:pharmacity/models/product.dart';
import 'components/body.dart';
import 'custom_app_bar.dart';
import 'floating_button.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments agrs =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight - 10),
        child: CustomAppBar(),
      ),
      body: Body(heroTag: agrs.heroTag, product: agrs.product),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const FloatingButton(),
    );
  }
}

class ProductDetailsArguments {
  final Product product;
  final String heroTag;

  ProductDetailsArguments({required this.heroTag, required this.product});
}
