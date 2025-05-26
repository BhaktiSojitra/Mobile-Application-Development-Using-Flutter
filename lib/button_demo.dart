import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OutlinedButton(
          onPressed: () {
            print("OutlinedButton Tapped...");
          },
          child: Text(
            "OutlinedButton",
            style: TextStyle(fontSize: 19),
          )),
    );
  }
}
/*body: TextButton(
      onPressed: () {
        print("button tapped");
      },
      onLongPress: () {
        print("long press button tapped");
      },
      child: Text("Click",style: TextStyle(fontSize: 21)),
    )),

body: ElevatedButton(
    onPressed: () {
      print("ElevatedButton Tapped..");
    },
    child: Text(
      "ElevatedButton",
      style: TextStyle(fontSize: 20),
    )),*/