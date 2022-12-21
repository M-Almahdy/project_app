import 'package:flutter/material.dart';
import 'package:test_app/shared/color.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: appbarGreen,
      title: Text("Home"),
    ));
  }
}
