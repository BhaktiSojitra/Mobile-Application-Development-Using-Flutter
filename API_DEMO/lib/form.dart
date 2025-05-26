import 'package:api_demo/StudentModel.dart';
import 'package:flutter/material.dart';
import 'package:api_demo/api_code.dart';

class form extends StatefulWidget {
  final StudentModel? model;
  const form({super.key,this.model});

  @override
  State<form> createState() => formState();
}

class formState extends State<form> {

  APICode api = APICode();
  var namecontroller = TextEditingController();
  var idcontroller = TextEditingController();

  void initState() {
    super.initState();
    namecontroller.text = widget.model?.name ?? "";
    idcontroller.text = widget.model?.id ?? "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              controller: namecontroller,
              decoration: InputDecoration(
                labelText: "Enter Name",
                labelStyle: TextStyle(fontSize: 17),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: idcontroller,
              decoration: InputDecoration(
                labelText: "Enter Id",
                labelStyle: TextStyle(fontSize: 17),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),
          OutlinedButton(
              onPressed: () {
                StudentModel model = StudentModel();
                model.name=namecontroller.text;
                model.id=idcontroller.text;

                if (widget.model != null) {
                  model.id= widget.model?.id??0.toString();
                  api.updateStudent(model).then((value) {
                    Navigator.pop(context);
                  });
                } else {
                  api.insertStudent(model).then((value) {
                    Navigator.pop(context);
                  });
                }
              },
              child: Text("Submit"))
        ],
      ),
    );
  }
}
