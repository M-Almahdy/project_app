import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/shared/appbar.dart';
import 'package:test_app/shared/color.dart';

class Checkout extends StatelessWidget {
  const Checkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: Text("Checkout"),
        actions: [
          pap()
        ],
      ),
      body: SizedBox(
        height: 300,
        child: ListView.builder(
          
          
          itemBuilder: itemBuilder),
      ),
    );
  }
}
