import 'package:donts/views/burger_item.dart';
import 'package:flutter/material.dart';

class Burger extends StatelessWidget {
  final List<Map<String, dynamic>> burgerList = [
    {
      "flavor": "old school",
      "price": "40",
      "color": Colors.red,
      "image": 'assets/burger/burger.png'
    },
    {
      "flavor": "lava",
      "price": "23",
      "color": Colors.blue,
      "image": 'assets/burger/lava (1).png'
    },
    {
      "flavor": "double",
      "price": "50",
      "color": Colors.pink,
      "image": 'assets/burger/fries.png'
    },
    {
      "flavor": "regular",
      "price": "20",
      "color": Colors.brown,
      "image": 'assets/burger/hamburger.png'
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
        return BurgerItem(
          image: burgerList[index]["image"],
          price: burgerList[index]["price"],
          paint: burgerList[index]["color"],
          flavoer: burgerList[index]["flavor"],
        );
      },
    );
  }
}
