import 'package:flutter/material.dart';

class row_column_demo extends StatelessWidget {
  const row_column_demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 300,
        height: 300,
        color: Colors.amberAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end, //spaceEvenly,spaceBetween,spaceAround,center
          crossAxisAlignment: CrossAxisAlignment.stretch, //center,end,start
          children: [
            Text("a"),
            Text("b"),
            Text("c"),
            Text("d"),
            Text("e"),
            Text("f"),
            Text("g"),
            ElevatedButton(onPressed: (){}, child: Text("button"))
          ],
        ),
      ),
    );
  }
}
/*
return Scaffold(
      body: Container(
        width: 300,
        color: Colors.amberAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("a"),
            Text("b"),
            Text("c"),
            Text("d"),
            Text("e"),
            Text("f"),
            Text("g"),
          ],
        ),
      ),
    );
 */

/*
return Scaffold(
      body: Container(
        width: 300,
        color: Colors.amberAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("a"),
            Text("b"),
            Text("c"),
            Text("d"),
            Text("e"),
            Text("f"),
            Text("g"),
          ],
        ),
      ),
    );
 */

/*
return Scaffold(
      body: Container(
        width: 300,
        height: 300,
        color: Colors.amberAccent,
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly, //center
          crossAxisAlignment:  CrossAxisAlignment.end, //center
          children: [
            Text("a"),
            Text("b"),
            Text("c"),
            Text("d"),
            Text("e"),
            Text("f"),
            Text("g"),
          ],
        ),
      ),
    );
 */