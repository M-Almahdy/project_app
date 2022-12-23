import 'package:flutter/material.dart';
import 'package:test_app/model/items.dart';

class Cart with ChangeNotifier {
  List selectedProducts = [];

  add(Item product) {
    selectedProducts.add(product);
  }
}
