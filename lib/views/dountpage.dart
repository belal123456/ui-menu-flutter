import 'package:donts/views/dount_view_page.dart';
import 'package:flutter/material.dart';

import 'dountas.details.dart';

class Dountpage extends StatelessWidget {
  final List<Map<String, dynamic>> dountsONsale = [
    {
      "flavor": "Nutella",
      "price": "36",
      "color": Colors.red,
      "image": 'assets/11.png'
    },
    {
      "flavor": "strawberry",
      "price": "20",
      "color": Colors.blue,
      "image": 'assets/2.png'
    },
    {
      "flavor": "mix strawberry",
      "price": "12",
      "color": Colors.pink,
      "image": 'assets/donut (1).png'
    },
    {
      "flavor": "mix choco",
      "price": "20",
      "color": Colors.brown,
      "image": 'assets/33.png'
    },
  ];

  void foodNavigator(BuildContext context, int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => dountdetails(
                image: dountsONsale[index]["image"],
                price: dountsONsale[index]["price"],
                flavoer: dountsONsale[index]["flavor"],
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(12),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.5),
      itemCount: dountsONsale.length,
      itemBuilder: (BuildContext context, int index) {
        return dountTitle(
            image: dountsONsale[index]["image"],
            price: dountsONsale[index]["price"],
            paint: dountsONsale[index]["color"],
            flavoer: dountsONsale[index]["flavor"],
            onTap: () => foodNavigator(context, index));
      },
    );
  }
}
