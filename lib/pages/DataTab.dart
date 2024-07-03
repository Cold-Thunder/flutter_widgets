import 'package:first_app/activities/DatePick.dart';
import 'package:first_app/activities/ForScreen.dart';
import 'package:first_app/activities/Range.dart';
import 'package:flutter/material.dart';

class DataTab extends StatefulWidget{
  @override
  _DataTab createState()=> _DataTab();
}

class _DataTab extends State<DataTab>{
  ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.purple,
    shape:const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10))
    )
  );

  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Container(
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> FormScreen())
                  );
                },
                style: buttonStyle,
                child: const Text('Create Account', style: TextStyle(fontSize: 22, color: Colors.white))
              )
            ),
            Container(
              child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>DatePick()));
                },
                  style: buttonStyle,
                child: const Text('Go to DatePicker', style: TextStyle(fontSize: 22, color: Colors.white))
              )
            ),
            Container(
              child: ElevatedButton(
                child: const Text('Go to Range', style: TextStyle(fontSize: 22, color: Colors.white)),
                style: buttonStyle,
                onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>Range())
                  );
                },
              )
            )
          ]
        )
      )
    );
  }
}