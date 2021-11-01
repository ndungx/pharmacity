import 'package:flutter/material.dart';
import 'product.dart';

class CartModel extends ChangeNotifier {
  late ProductModel _product;

  final List<Map<Product, int>> _productIds = [];

  ProductModel get product => _product;

  set product(ProductModel newProduct) {
    _product = newProduct;
    notifyListeners();
  }

  List<Map<Product, int>> get products =>
      _productIds.map((product) => product).toList();

  // int get totalPrice => products.fold(
  //     0, (total, current) => total + current[0]! * current[Product]!);
  //  int get totalPrice => products.fold(
  //     0, (total, current) => total + current.);

  void addProduct(Product product) {
    _productIds.map((e) => e.containsKey(product.id)
        ? e.map((key, value) => MapEntry(key, value + 1))
        : MapEntry(product.id, 1));
    notifyListeners();
  }

//remove product
  void removeProduct(Product product) {
    _productIds.asMap().forEach(
      (index, map) {
        if (map.containsKey(product.id)) {
          if (map[product.id] == product.id) {
            _productIds.removeAt(index);
          }
        }
      },
    );
    notifyListeners();
  }
}
