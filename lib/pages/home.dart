// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:test_app/shared/color.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: Drawer(
              child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/test.jpg"),
                      fit: BoxFit.cover),
                ),
                currentAccountPicture: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/img/mohamed.jpg"),
                ),
                accountName: Text("Mohamed Wael",
                    style:
                        TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
                accountEmail: Text("yiticam620@pro5g.com"),
              ),
            ],
          )),
          appBar: AppBar(
            actions: [
              Row(
                children: [
                  Stack(
                    children: [
                      Positioned(
                        bottom: 24,
                        child: Container(
                          child: Text(
                            "8",
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(211, 164, 255, 193),
                              shape: BoxShape.circle),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add_shopping_cart)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Text(
                      "\$ 13",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              )
            ],
            backgroundColor: appbarGreen,
            title: Text("Home"),
          )),
    );
  }
}
