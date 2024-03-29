// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/model/items.dart';
import 'package:test_app/pages/checkout.dart';
import 'package:test_app/pages/details_screen.dart';
import 'package:test_app/provider/cart.dart';
import 'package:test_app/shared/appbar.dart';
import 'package:test_app/shared/color.dart';

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
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => Details(
                                  product: items[index],
                                ))));
                  },
                  child: GridTile(
                    footer: GridTileBar(
                      backgroundColor: Color.fromARGB(66, 0, 0, 0),
                      trailing:
                          Consumer<Cart>(builder: ((context, cart, child) {
                        return IconButton(
                            color: Color.fromARGB(255, 62, 94, 70),
                            onPressed: () {
                              cart.add(items[index]);
                            },
                            icon: Icon(Icons.add));
                      })),
                      leading: Text("\$12.99"),
                      title: Text(""),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: -3,
                          bottom: -9,
                          right: 0,
                          left: 0,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(55),
                              child: Image.asset(items[index].imgPath)),
                        ),
                      ],
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
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );
                      }),
                  ListTile(
                      title: Text("My products"),
                      leading: Icon(Icons.add_shopping_cart),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Checkout(),
                          ),
                        );
                      }),
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
          appBar: AppBar(actions: [
            pap(),
          ], backgroundColor: appbarGreen, title: Text("Home"))),
    );
  }
}
