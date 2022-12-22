// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:test_app/shared/color.dart';

class Item {
  String imgPath;
  double price;

  Item({required this.imgPath, required this.price});
}

List items = [
  Item(imgPath: "assets/img/1.jpeg", price: 119.99),
  Item(imgPath: "assets/img/2.jpeg", price: 230.99),
  Item(imgPath: "assets/img/3.jpeg", price: 199.99),
  Item(imgPath: "assets/img/4.jpeg", price: 129.99),
  Item(imgPath: "assets/img/5.jpeg", price: 299.99),
  Item(imgPath: "assets/img/6.jpeg", price: 154.99),
  Item(imgPath: "assets/img/7.jpeg", price: 599.99),
  Item(imgPath: "assets/img/8.jpeg", price: 699.99),
];

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 22),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 33),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {},
                  child: GridTile(
                    child: Stack(
                      children: [
                        Positioned(
                          top: -3,
                          bottom: -9,
                          right: 0,
                          left: 0,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(55),
                              child: Image.asset("assets/img/1.jpeg")),
                        ),
                      ],
                    ),
                    footer: GridTileBar(
                      backgroundColor: Color.fromARGB(66, 0, 0, 0),
                      trailing: IconButton(
                          color: Color.fromARGB(255, 0, 0, 0),
                          onPressed: () {},
                          icon: Icon(Icons.add)),
                      leading: Text("\$12.99"),
                      title: Text(""),
                    ),
                  ),
                );
              },
            ),
          ),
          drawer: Drawer(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255))),
                    accountEmail: Text("yiticam620@pro5g.com"),
                  ),
                  ListTile(
                      title: Text("Home"),
                      leading: Icon(Icons.home),
                      onTap: () {}),
                  ListTile(
                      title: Text("My products"),
                      leading: Icon(Icons.add_shopping_cart),
                      onTap: () {}),
                  ListTile(
                      title: Text("About"),
                      leading: Icon(Icons.help_center),
                      onTap: () {}),
                  ListTile(
                      title: Text("Logout"),
                      leading: Icon(Icons.exit_to_app),
                      onTap: () {}),
                ],
              ),
              Container(
                margin: EdgeInsets.only(bottom: 12),
                child: Text("Developed by Mohamed Alsaqr © 2023",
                    style: TextStyle(fontSize: 16)),
              )
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
