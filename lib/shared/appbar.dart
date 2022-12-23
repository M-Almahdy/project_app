import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/provider/cart.dart';


class pap extends StatelessWidget {
  const pap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, cart, child) {
              return Row(
                children: [
                  Stack(
                    children: [
                      Positioned(
                        bottom: 24,
                        child: Container(
                            child: Text(
                              "${cart.selectedProducts.length}",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                            ),
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(211, 164, 255, 193),
                                shape: BoxShape.circle)),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add_shopping_cart)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Text(
                      "\$ ${cart.price}",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              );
            });
  }
}