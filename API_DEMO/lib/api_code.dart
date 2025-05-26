import 'package:api_demo/StudentModel.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class APICode {
  Future<List<StudentModel>> getDetails () async {
    var res = await http.get(
        Uri.parse("https://660ab9fcccda4cbc75dba5c1.mockapi.io/student"));
    print(res.statusCode);
    List<dynamic> StudentList = jsonDecode(res.body);
    List<StudentModel> StudentModelList = [];
    for (int i = 0; i < StudentList.length; i++) {
      StudentModel model = StudentModel();
      model.name = StudentList[i]["name"];
      model.id = StudentList[i]["id"];
      StudentModelList.add(model);
    }
    return StudentModelList;
  }

  Future<void> deleteStudent(String id) async {
    await http.delete(Uri.parse(
        "https://660ab9fcccda4cbc75dba5c1.mockapi.io/student/" + id));
  }

  Future<void> insertStudent(StudentModel model) async {
    Map<String, Object?>map = {};
    map["name"] = model.name;
    map["id"] = model.id;
    await http.post(
        Uri.parse("https://660ab9fcccda4cbc75dba5c1.mockapi.io/student/"),
        body: map);
  }

  Future<void> updateStudent(StudentModel model) async {
    Map<String, Object?>map = {};
    map["name"] = model.name;
    await http.put(Uri.parse(
        "https://660ab9fcccda4cbc75dba5c1.mockapi.io/student/" + model.id),
        body:map);
  }
}