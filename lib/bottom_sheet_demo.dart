import 'package:flutter/material.dart';

class bottom_sheet_demo extends StatefulWidget {
  const bottom_sheet_demo({super.key});

  @override
  State<bottom_sheet_demo> createState() => _bottom_sheet_demoState();
}

class _bottom_sheet_demoState extends State<bottom_sheet_demo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 12,bottom: 22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                                children:[
                                  Icon(Icons.video_collection),
                                  Text("Videos",style: TextStyle(fontSize: 20))
                            ]),
                            Column(
                                children:[
                                  Icon(Icons.favorite_border),
                                  Text("Favourites",style: TextStyle(fontSize: 20))
                            ]),
                            Column(
                                children:[
                                  Icon(Icons.recycling),
                                  Text("Recycle",style: TextStyle(fontSize: 20))
                            ]),
                            Column(
                                children:[
                                  Icon(Icons.settings),
                                  Text("Settings",style: TextStyle(fontSize: 20))
                            ]),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                              children:[
                                Icon(Icons.ac_unit),
                                Text("Unit",style: TextStyle(fontSize: 20))
                              ]),
                          Column(
                              children:[
                                Icon(Icons.access_alarm),
                                Text("Alarm",style: TextStyle(fontSize: 20))
                              ]),
                          Column(
                              children:[
                                Icon(Icons.access_time),
                                Text("Time",style: TextStyle(fontSize: 20))
                              ]),
                          Column(
                              children:[
                                Icon(Icons.accessibility),
                                Text("Accessibility",style: TextStyle(fontSize: 20))
                              ]),
                        ],
                      ),
                    ],
                  );
                });
          },
          child: Text("BottomSheet", style: TextStyle(fontSize: 27))),
    ));
  }
}