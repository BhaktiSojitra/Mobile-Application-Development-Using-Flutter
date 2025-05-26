import 'package:flutter/material.dart';

class listview extends StatefulWidget {
  const listview({super.key});

  @override
  State<listview> createState() => _listviewState();
}

class _listviewState extends State<listview> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListTile(
        leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/CircleAvatar.jpg"),
                radius: 20),
        title: Text("TITLE"),
        subtitle: Text("THIS IS A SUBTITLE"),
        trailing: CircleAvatar(
                radius: 20,
                child: Text("+")),
      ),
    );
  }
}
/*
return Scaffold(
      body: ListView(
        scrollDirection: Axis.horizontal,
        reverse: true,
        children: [
          Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.amberAccent,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.black,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.black12,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.amber,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.amberAccent,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.black,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.black12,
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
        ],
      ),
    );
 */

/*
import 'package:flutter/material.dart';

class listview extends StatefulWidget {
  const listview({super.key});

  @override
  State<listview> createState() => _listviewState();
}

class _listviewState extends State<listview> {
  List color=[
    Colors.pink,
    Colors.purple,
    Colors.pink,
    Colors.black,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder:(context, index) {
        return Container(width: 100, height: 100, color: color[index],);
      },
      itemCount: color.length,
      itemExtent: 200),
    );
  }
}
 */

/*
import 'package:flutter/material.dart';

class listview extends StatefulWidget {
  const listview({super.key});

  @override
  State<listview> createState() => _listviewState();
}

class _listviewState extends State<listview> {
  List color=[
    Colors.pink,
    Colors.purple,
    Colors.pink,
    Colors.black,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder:(context, index) {
        return Container(width: 100, height: 100, color: color[index],);
      },
      itemCount: color.length,
      separatorBuilder: (context,index){
        return Divider(height:200,thickness: 3);
      }),
    );
  }
}
 */