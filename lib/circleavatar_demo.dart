import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
              /*height:100,
              width:100,*/
              child: CircleAvatar(
                child: Text("girl",style: TextStyle(fontSize: 35)),
                //backgroundImage: NetworkImage("https://instacaptionsforall.in/wp-content/uploads/2023/11/3-2-1024x1024.jpg"),
                backgroundColor: Colors.green,
                radius: 70,
      ),
    )));
  }
}