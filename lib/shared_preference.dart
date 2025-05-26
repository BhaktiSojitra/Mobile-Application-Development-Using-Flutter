import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class shared_preference extends StatefulWidget {
  const shared_preference({super.key});

  @override
  State<shared_preference> createState() => _shared_preferenceState();
}

class _shared_preferenceState extends State<shared_preference> {
  var name = TextEditingController();
  var namevalue = "no saved value";

  void initState() {
    super.initState();
    getvalue();
  }

  /*If expression1 evaluates to a non-null value, the result of the entire expression is the value of expression1.
  If expression1 evaluates to null, the result of the entire expression is the value of expression2.*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: TextField(
              controller: name,
              decoration: InputDecoration(
                labelText: "Enter your Name",
                labelStyle: TextStyle(fontSize: 17),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(width: 5),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () async {
                var Name = name.text.toString(); //print(Name);
                var prefs = await SharedPreferences.getInstance();
                prefs.setString("Name", Name);
              },
              child: Text(
                "Submit",
                style: TextStyle(fontSize: 27),
              )),
          SizedBox(height: 20),
          Text(namevalue),
        ],
      ),
    );
  }

  Future<void> getvalue() async {
    var prefs = await SharedPreferences.getInstance();
    var getname = prefs.getString("Name");
    namevalue = getname ?? namevalue;
    setState(() {});
  }
}

/*
await SharedPreferences.getInstance(): This line pauses the execution of the getvalue()
function until the SharedPreferences.getInstance() method completes and returns a result.
 */
