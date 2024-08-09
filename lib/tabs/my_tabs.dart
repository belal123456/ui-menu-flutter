import 'package:flutter/material.dart';

class MyTab extends StatelessWidget {
  const MyTab({super.key, required this.iconpath});
  final String iconpath;

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: 80,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.transparent),
          child: Image.asset(iconpath)),
    );
  }
}
