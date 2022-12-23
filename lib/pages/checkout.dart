import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/provider/cart.dart';
import 'package:test_app/shared/appbar.dart';
import 'package:test_app/shared/color.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: Text("Checkout"),
        actions: [pap()],
      ),
      body: SizedBox(
          height: 300,
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: cart.selectedProducts.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    subtitle: Text(""),
                    leading: CircleAvatar(
                      backgroundColor: AssetImage("assets/img/2.jpeg"),
                    ),
                    title: Text(""),
                    trailing:
                        IconButton(onPressed: () {}, icon: (Icons.remove)),
                  ),
                );
              })),
    );
  }
}
