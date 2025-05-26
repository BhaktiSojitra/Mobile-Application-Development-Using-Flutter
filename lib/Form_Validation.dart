import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:form_field_validator/form_field_validator.dart';

class form_validation extends StatefulWidget {
  const form_validation({super.key});

  @override
  State<form_validation> createState() => _form_validationState();
}

class _form_validationState extends State<form_validation> {
  var text=TextEditingController();
  String s="";
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  void validate(){
    /*print(formkey.currentState!);
    print(formkey.currentState!.validate());*/

    if(formkey.currentState!.validate()){
      print("ok");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Form(
          key: formkey,
          //autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(children: [

            TextFormField(
              decoration: InputDecoration(
                labelText: "Enter your Email",
                labelStyle: TextStyle(fontSize: 20),

                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.blueGrey, width: 2),
                ),
                suffixIcon:IconButton(
                    onPressed: (){
                      setState(() {});
                    },
                    icon: Icon(Icons.email))),

                validator:MultiValidator([
                    EmailValidator(errorText: "please enter valid email"),
                    RequiredValidator(errorText: "required")
                ]),
            ),

            SizedBox(height: 30),

            TextFormField(
              decoration: InputDecoration(
                labelText: "Enter your password",
                labelStyle: TextStyle(fontSize: 20),

                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Colors.blueGrey, width: 2),
                ),
                suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {});
                    },
                    icon: Icon(Icons.remove_red_eye_sharp))),

              validator: (value){
                if(value!.isEmpty) {
                  return "required";
                }
                /*else if(value.length < 6){
                  return "at least 6 character required";
                }*/
              },
            ),

            SizedBox(height: 30),

            TextFormField(
              decoration: InputDecoration(
                  labelText: s.isEmpty ? "Enter your date" : "$s",
                  labelStyle: TextStyle(fontSize: 20),

                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blueGrey, width: 2),
                  ),

                  suffixIcon: IconButton(
                      onPressed: () async {
                        DateTime? datePicked = await showDatePicker(
                            context: context,
                            firstDate: DateTime(1980),
                            lastDate: DateTime(2030));
                        if(datePicked != null) {
                          s=DateFormat.yMMMd().format(datePicked);
                          setState(() {});
                        }
                      },
                      icon: Icon(Icons.date_range_rounded))
              ),
            ),

            SizedBox(height: 30),

            OutlinedButton(onPressed:(){
              validate();
            },
                child: Text("Submit",style: TextStyle(fontSize:27),))
          ]),
        ),
      ),
    );
  }
}