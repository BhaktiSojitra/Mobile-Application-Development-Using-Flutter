import 'package:flutter/material.dart';

class snack_bar extends StatelessWidget {
  const snack_bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
            child: ElevatedButton(
                onPressed: () {
                  var mysnackbar = SnackBar(
                      content:Text("Removed",style: TextStyle(fontSize: 20,color: Colors.white)),
                      action: SnackBarAction(label: "Undo",onPressed:(){}),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(mysnackbar);
                },
                child: Text("Snackbar", style: TextStyle(fontSize: 27))),
            ),
            floatingActionButton: FloatingActionButton(onPressed: (){},
              backgroundColor: Colors.black,
              child: Icon(Icons.add,color: Colors.white,size: 30),
            ),
    );
  }
}