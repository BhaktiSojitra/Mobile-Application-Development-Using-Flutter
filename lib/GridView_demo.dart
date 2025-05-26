import 'package:flutter/material.dart';

class GridView_demo extends StatefulWidget {
  const GridView_demo({super.key});

  @override
  State<GridView_demo> createState() => _GridView_demoState();
}

class _GridView_demoState extends State<GridView_demo> {
  var colors = [
    Colors.orange, Colors.green, Colors.blue,
    Colors.brown, Colors.pink, Colors.black,
    Colors.yellow, Colors.cyan, Colors.indigo,
    Colors.purple,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              mainAxisExtent: 50,
              maxCrossAxisExtent: 150,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10
          ),
          itemBuilder: (BuildContext context, int index) {
            return Container(color: colors[index]);
          },
          itemCount: colors.length,
        ),
      ),
    );
  }
}

/*body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.count(crossAxisCount: 4,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: [
          Container(height:200,width:200,color: colors[0]),
          Container(height:200,width:200,color: colors[1]),
          Container(height:200,width:200,color: colors[2]),
          Container(height:200,width:200,color: colors[3]),
          Container(height:200,width:200,color: colors[4]),
          Container(height:200,width:200,color: colors[5]),
          Container(height:200,width:200,color: colors[6]),
          Container(height:200,width:200,color: colors[7]),
          Container(height:200,width:200,color: colors[8]),
          Container(height:200,width:200,color: colors[9]),
        ]),
      )
*/

/*body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.extent(maxCrossAxisExtent: 70,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        children: [
          Container(color: colors[0]),
          Container(color: colors[1]),
          Container(color: colors[2]),
          Container(color: colors[3]),
          Container(color: colors[4]),
          Container(height:200,width:200,color: colors[5]),
          Container(height:200,width:200,color: colors[6]),
          Container(height:200,width:200,color: colors[7]),
          Container(height:200,width:200,color: colors[8]),
          Container(height:200,width:200,color: colors[9]),
        ]),
      )
*/