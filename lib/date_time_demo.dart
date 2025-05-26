import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class date_time_demo extends StatefulWidget {
  const date_time_demo({super.key});

  @override
  State<date_time_demo> createState() => _date_time_demoState();
}

class _date_time_demoState extends State<date_time_demo> {

  var s=" ";

  @override
  Widget build(BuildContext context) {
    var time=DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text("Date Time Demo"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("select date:- $s",style: TextStyle(fontSize: 22)), //year,time,month,weekday

            SizedBox(height:15),

            ElevatedButton(onPressed: () async {
              DateTime? datePicked = await showDatePicker(context: context,
                  firstDate: DateTime(1980),
                  lastDate: DateTime(2030));
              if(datePicked!=null){
                s=DateFormat.yMMMMEEEEd().format(datePicked);
                setState(() {});
              }
              else{
                print("null");
              }
            },
               child: Text("Show",style: TextStyle(fontSize: 25)))
          ],
        ),
      ),
    );
  }
}

/*body: Center(
        child: Column(
          children: [
            Text("current time:- ${time.hour}:${time.minute}:${time.second}",style: TextStyle(fontSize: 22)), //year,time,month,weekday

            SizedBox(height:15),

            Text("current time using dateformate:- ${DateFormat('Hms').format(time)}",style: TextStyle(fontSize: 22)), //dateformate()

            SizedBox(height:15),

            ElevatedButton(onPressed: (){
              setState(() {});
            }, child: Text("Refreash",style: TextStyle(fontSize: 25)))
          ],
        ),
      ),
*/