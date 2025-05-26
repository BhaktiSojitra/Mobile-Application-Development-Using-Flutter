import 'package:flutter/material.dart';

class Stackdemo extends StatelessWidget {
  const Stackdemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 300,
            width: 300,
            color: Colors.green,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.white,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
