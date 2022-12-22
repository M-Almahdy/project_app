// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:test_app/shared/color.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      actions: [
        Row(
          children: [
            IconButton(onPressed: (), icon: Icon(Icon.add_shopping_cart)),
            Text("\$ 13" , style: TextStyle(fontSize: 18),),
          ],
        )
      ],
      backgroundColor: appbarGreen,
      title: Text("Home"),
    ));
  }
}
