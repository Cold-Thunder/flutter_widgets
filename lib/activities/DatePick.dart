
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePick extends StatefulWidget{
  @override
  _DatePick createState()=> _DatePick();
}

class _DatePick extends State<DatePick>{
  DateTime? date;
  DateTime? time;
  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.purple,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10)
    ),
    elevation: 3,
  );
  pick(){
    DateTime tim = new DateTime.now();
    setState((){
      time = tim;
    });
  }
  datePicker()async{
    try{
    DateTime? time = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2022),
      lastDate: DateTime(2026)
    );
    if(time != null){
      setState((){
        date = time;
      });
    }
    }catch(err){
      print(err);
    }
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text("Date Picker", style: TextStyle(fontSize: 22, color: Colors.white)),
        backgroundColor: Colors.green,
        iconTheme:const IconThemeData(
          color: Colors.white
        )
      ),
      body: Center(
        child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: Text('Date: ${time != null ? DateFormat('jms').format(time!) : 0 }',
                      style:const TextStyle(fontSize: 22))
                ),
                Container(
                  child: ElevatedButton(
                    child:const Text('Show Data',style: TextStyle(fontSize: 22, color: Colors.white)),
                    style: buttonStyle,
                    onPressed: (){
                      var timer = Timer.periodic(const Duration(seconds: 1), (Timer timer){
                        pick();
                      });
                    }
                  )
                ),
                Container(
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          style:const TextStyle(
                            color: Colors.grey,
                            fontSize: 22
                          ),
                          children: <TextSpan>[
                            const TextSpan(
                              text: 'Pick a Date:'
                            ),
                            TextSpan(
                              text: '${date != null ?
                              DateFormat('yMMMd').format(date!)
                                  : DateFormat('yMMMd').format(DateTime.now())}',
                              style:const TextStyle(
                                fontSize: 30,
                                color: Colors.blue
                              )
                            )
                          ]
                        )
                      )
                    ]
                  )
                ),
                Container(
                  child: ElevatedButton(
                    style:buttonStyle,
                    onPressed: (){
                      datePicker();
                    },
                    child:const Text('Date Picker', style: TextStyle(fontSize: 22, color: Colors.white))
                  )
                )
              ]
            )
        )
      )
    );
  }
}