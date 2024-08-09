import 'package:flutter/material.dart';

class dountdetails extends StatelessWidget {
  const dountdetails(
      {super.key,
      required this.image,
      required this.price,
      required this.flavoer});
  final String image;
  final String price;
  final String flavoer;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.red, size: 36),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 23),
        child: Column(children: [
          Expanded(
              child: ListView(children: [
            Image.asset(
              image,
              height: 300,
            ),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Icon(Icons.star, color: Colors.yellow[800]),
                  Text(
                    "4.9",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 23,
                  ),
                ],
              ),
            ),
            Text(
              flavoer,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "description",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Our Chocolate Donuts are a heavenly treat for all chocolate lovers. These soft, fluffyd with rich, velvety chocolate glaze that melts in your mouth with every bite. Topped with a sprinkle of chocolate shavings, these donuts ofess and texture. Whether you enjoy them with your morning coffee or as an afternoon snack, our Chocolate Donuts are guaranteed to satision, th",
              style: TextStyle(
                  color: Colors.grey[600],
                  fontWeight: FontWeight.bold,
                  height: 2),
            )
          ]))
        ]),
      ),
    );
  }
}
