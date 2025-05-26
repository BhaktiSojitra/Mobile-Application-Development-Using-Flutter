import 'package:flutter/material.dart';

class drawer_demo extends StatefulWidget {
  const drawer_demo({super.key});

  @override
  State<drawer_demo> createState() => _drawer_demoState();
}

class _drawer_demoState extends State<drawer_demo> {

  List title =[
    Text("My Profile",style: TextStyle(fontSize: 20)),
    Text("Profile Privacy",style: TextStyle(fontSize: 20)),
    Text("Device Authorization Center",style: TextStyle(fontSize: 20)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Drawer Demo"),
          titleTextStyle: TextStyle(fontSize: 22, color: Colors.pinkAccent),
          backgroundColor: Colors.black12,
        ),
        endDrawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Row(
                children: [
                  CircleAvatar(
                            backgroundImage: AssetImage("assets/images/CircleAvatar.jpg"),
                            radius: 30,),
                  SizedBox(width: 15),
                  Padding(
                    padding: const EdgeInsets.only(top: 45),
                    child: Column(
                        children: [
                          Text("Sojitrabhakti03@gmail.com",style: TextStyle(fontSize: 15)),
                          Text("6351381278",style: TextStyle(fontSize: 15))
                        ],
                      ),
                  ),
                ],
              )),
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: title[index],
                    trailing: Icon(Icons.arrow_forward),
                  );
              },
              itemCount: title.length),
            ],
          ),
        ));
  }
}
