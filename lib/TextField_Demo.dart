import 'package:flutter/material.dart';

class textfield extends StatefulWidget {
  const textfield({super.key});

  @override
  State<textfield> createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {
  var text1=TextEditingController();
  var _isObscured=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              margin:EdgeInsets.all(12),
              width: 300,
              child: TextField(
                obscureText: _isObscured,
                //enabled: false,
                controller: text1,
                keyboardType: TextInputType.emailAddress,

                decoration: InputDecoration(

                  labelText: "Enter your password",
                  labelStyle: TextStyle(fontSize: 17),
                  /*focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.greenAccent, width: 2),
                  ),

                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.pinkAccent, width: 2),
                  ),*/

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),

                  //suffixText: "username exits",

                  suffixIcon: IconButton(
                      onPressed: (){
                        setState(() {
                          _isObscured=!_isObscured;
                        });
                      },
                      icon: Icon(Icons.remove_red_eye_sharp)),
                ),
              ),
            ),
            SizedBox(height: 200),

            ElevatedButton(onPressed:(){
              String s=text1.text;
              print("text:- $s");
            },
                child: Text("Submit",style: TextStyle(fontSize:27),)),

            SizedBox(height: 200),

            Container(
              width: 200,
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(width: 5)),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
