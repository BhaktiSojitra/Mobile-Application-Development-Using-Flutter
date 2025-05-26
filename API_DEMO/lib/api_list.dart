import 'package:api_demo/api_code.dart';
import 'package:flutter/material.dart';
import 'package:api_demo/form.dart';

class api_list extends StatefulWidget {
  const api_list({super.key});

  @override
  State<api_list> createState() => _api_listState();
}

class _api_listState extends State<api_list> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API Demo"),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return form();
              },
            )).then((value) {
              setState(() {});
            });
          }, icon: Icon(Icons.add,weight: 20))
        ],
      ),
      body: FutureBuilder(
        future: APICode().getDetails(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Card(
                    color: Colors.white,
                    elevation: 2.0,
                    child: Row(children: [
                      Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "ID:-${snapshot.data![index].id}",
                                  style: TextStyle(fontSize: 19)),
                              Text(
                                  "NAME:-${snapshot.data![index].name}",
                                  style: TextStyle(fontSize: 19)),
                            ]),
                      Spacer(),
                      IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return form(model: snapshot.data![index]);
                              },
                            )).then((value) {
                              setState(() {});
                            });
                          },
                          icon: Icon(Icons.edit)),
                      IconButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text("Delete Data",
                                        style: TextStyle(
                                            fontSize: 19,
                                            fontWeight:
                                            FontWeight.bold)),
                                    content: Text(
                                        "Are You Sure You Want To Delete This Data?",
                                        style: TextStyle(fontSize: 17)),
                                    actions: [
                                      TextButton(
                                        onPressed: () async {
                                          await APICode().deleteStudent(snapshot.data![index].id)
                                              .then((value) {Navigator.pop(context);});
                                          setState(() {});
                                        },
                                        child: Text("Yes"),
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text("No"),
                                      ),
                                    ],
                                  );
                                });
                          },
                          icon: Icon(Icons.delete))
                    ]),
                  );
              },
            );
          }
          else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
