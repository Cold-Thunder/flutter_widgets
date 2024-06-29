import 'package:flutter/material.dart';

class StateFullWidPrac extends StatefulWidget{
  @override
  _MyStateFul createState() => _MyStateFul();
}

class _MyStateFul extends State<StateFullWidPrac>{
  int _num = 0;
  void _incre(){
    setState((){
      _num++;
    });
  }
  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Container(
              child: Text('$_num', style: TextStyle(fontSize: 40, color: Colors.black, fontWeight: FontWeight.bold))
            ),
            InkWell(
              onTap: _incre,
              child: Container(
              height: 50,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Colors.blue,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    blurRadius: 3,
                    offset: Offset(3,3)
                  )
                ]
              ),
              child: Icon(Icons.add, color: Colors.white, size: 40),
            ))
          ]
        )
      )
    );
  }
}