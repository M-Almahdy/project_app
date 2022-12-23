// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:test_app/model/items.dart';
import 'package:test_app/shared/color.dart';

bool isShowMore = true;

class Details extends StatefulWidget {
  // const Details({super.key});

  Item product;
  Details({required this.product});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(211, 164, 255, 193),
                          shape: BoxShape.circle),
                    ),
                  ),
                  IconButton(
                      onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
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
        title: Text("Details_screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/img/1.jpeg"),
            SizedBox(height: 11),
            Text(
              "\$ 12.99",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  child: Text(
                    "New",
                    style: TextStyle(fontSize: 15),
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 129, 129),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                  ],
                ),
                SizedBox(
                  width: 66,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.edit_location,
                      size: 26,
                      color: Color.fromARGB(168, 3, 65, 27),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "Flower Shop",
                      style: TextStyle(fontSize: 19),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              child: Text(
                "Details : ",
                style: TextStyle(fontSize: 22),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              "Most computer keyboards look the same — three rows of letters, a row or two of numbers, and a lot of punctuation and function keys. But although they look similar, keyboards can vary wildly when it comes to how they work on the inside. Most people today use one of two kinds of keyboards: membrane and mechanical keyboards. Membrane keyboards, the more common type, feature some sort of rubber dome under each key. When you press a key, the rubber is compressed, and the key makes an electrical connection with the keyboard's wires. Mechanical keyboards are very different — instead of rubber, they have a plastic switch under the key that makes the connection go through. This might not sound that different, but the style of key has a huge impact on how you type.",
              style: TextStyle(
                fontSize: 18,
              ),
              maxLines: isShowMore ? 3 : null,
              overflow: TextOverflow.fade,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    isShowMore = !isShowMore;
                  });
                },
                child: Text(
                  isShowMore ? "Show more" : "Show less",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
