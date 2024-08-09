import 'package:flutter/material.dart';

import 'pizza_item.dart';

class Pizaa extends StatelessWidget {
  final List<Map<String, dynamic>> burgerList = [
    {
      "flavor": "cheese",
      "price": "40",
      "color": Colors.red,
      "image": 'assets/pizza/pizza (1).png'
    },
    {
      "flavor": "Pepperoni",
      "price": "23",
      "color": Colors.blue,
      "image": 'assets/pizza/pizza.png'
    },
    {
      "flavor": "meat & cheese",
      "price": "50",
      "color": Colors.pink,
      "image": 'assets/pizza/pizza (2).png'
    },
    {
      "flavor": "vegatables",
      "price": "20",
      "color": Colors.brown,
      "image": 'assets/pizza/pizza (3).png'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemCount: burgerList.length,
      itemBuilder: (BuildContext context, int index) {
        return PizaaItem(
          image: burgerList[index]["image"],
          price: burgerList[index]["price"],
          paint: burgerList[index]["color"],
          flavoer: burgerList[index]["flavor"],
        );
      },
    );
  }
}
