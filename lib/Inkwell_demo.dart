import 'package:flutter/material.dart';

class inkwell extends StatelessWidget {
  const inkwell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: 200,
        color: Colors.amberAccent,
        child: InkWell(
          onTap: () {
            print("ontap");
          },
          onLongPress: () {
            print("on long press");
          },
          onDoubleTap: () {
            print("on double tap");
          },
          child: Icon(
            Icons.coffee_sharp,
            size: 40,
            color: Colors.brown,
          ),
        ),
      ),
    );
  }
}