import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class container extends StatelessWidget {
  const container({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //for exam write this code
        body:Center(
          child: Container(
            height: 100,
            width: 100,
            color: Colors.pink,
          ),
        )
    );
  }
}

/*
body: Center(
      child: Container(
        width: 200,
        height: 100,
        decoration: BoxDecoration(
            color: Color(0xFFFF6961),
            //borderRadius: BorderRadius.circular(15),
            border: Border.all(
              width: 4,
              color: Colors.pinkAccent,
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                color: Colors.purple,
                spreadRadius: 7, //default spreadradius color is black
              ),
            ],
            shape: BoxShape.circle
        ),
        child: Center(
            child: Text(
          "Hello Flutter",
          style: TextStyle(fontSize: 20),
        )),
      ),
    )
 */