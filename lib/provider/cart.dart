import 'package:flutter/material.dart';
import 'package:test_app/model/items.dart';

class Cart with ChangeNotifier {
  List selectedProducts = [];
  double price = 0;
  add(Item product) {
    selectedProducts.add(product);
    price += product.price;
    notifyListeners();
  }
}
