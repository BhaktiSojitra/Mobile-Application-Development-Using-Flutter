import 'package:flutter/material.dart';

class statefulwidget extends StatefulWidget {
  const statefulwidget({super.key});

  @override
  State<statefulwidget> createState() => _statefulwidgetState();
}

class _statefulwidgetState extends State<statefulwidget> {
  int counter=0;

  void update_counter(){
    setState((){
        counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Text('$counter',style: TextStyle(fontSize: 20),),
          ElevatedButton(onPressed: (){
            update_counter();
          }, child:Text("pressed")),
        ],
      ),
    );
  }
}
