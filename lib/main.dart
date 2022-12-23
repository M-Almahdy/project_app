// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:test_app/pages/checkout.dart';
import 'package:test_app/pages/details_screen.dart';
import 'package:test_app/pages/home.dart';
import 'package:test_app/pages/login.dart';
import 'package:test_app/pages/register.dart';
import 'package:provider/provider.dart';
import 'package:test_app/provider/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) {
          return Cart();
        },
        child:
            const MaterialApp(debugShowCheckedModeBanner: false, home: Checkout()));
  }
}
