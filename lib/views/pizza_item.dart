import 'package:flutter/material.dart';

class PizaaItem extends StatelessWidget {
  const PizaaItem(
      {super.key,
      required this.paint,
      required this.flavoer,
      required this.price,
      required this.image});
  final paint;
  final String flavoer;
  final String price;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 70,
                  child: Text(
                    "\$ $price",
                    style: TextStyle(color: paint[800], fontSize: 18),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(23),
                          bottomLeft: Radius.circular(23)),
                      color: paint[100]),
                  padding: EdgeInsets.all(12),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 10),
              child: Image.asset(image),
            ),
            Text(
              flavoer,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "Papa John's",
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.black,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12.0),
                      child: Icon(
                        Icons.add_shopping_cart_outlined,
                        size: 20,
                        color: Colors.black,
                      )),
                ],
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23),
          color: paint[50],
        ),
      ),
    );
  }
}
