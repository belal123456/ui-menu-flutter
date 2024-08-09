import 'package:donts/tabs/my_tabs.dart';
import 'package:donts/views/burger.dart';
import 'package:donts/views/dountpage.dart';
import 'package:donts/views/pancake.dart';
import 'package:donts/views/pizaa.dart';
import 'package:donts/views/sushi.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = const [
    //dount tab
    MyTab(
      iconpath: "assets/donut (3).png",
    ),
    //burger tab
    MyTab(
      iconpath: "assets/hamburger.png",
    ),
    MyTab(
      iconpath: "assets/pizza.png",
    ),
    //pizea tab
    //pancake tab
    MyTab(
      iconpath: "assets/pancake.png",
    ),
    //sushi tab
    MyTab(
      iconpath: "assets/sushi.png",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Padding(
            padding: EdgeInsets.only(left: 12.0),
            child: Icon(
              Icons.menu_rounded,
              size: 36,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: IconButton(
                icon: const Icon(Icons.person_pin),
                onPressed: () {},
                iconSize: 36,
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Row(
                children: [
                  Text(" I Want To  ",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      )),
                  Text(
                    "Eat",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            TabBar(
              indicatorColor: Colors.pink,
              tabs: myTabs,
              dividerColor: Colors.transparent,
            ),
            SizedBox(
              height: 18,
            ),
            //tab view
            Expanded(
              child: TabBarView(children: [
                //dount
                Dountpage(),

                Burger(),

                Pizaa(),
                //burger
                //pizea

                //pizea

                //pancake
                Pancake(),

                //sushi
                Sushi(),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
