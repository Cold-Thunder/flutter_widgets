import 'package:flutter/material.dart';

class Expend extends StatefulWidget{
  @override
  _Expend createState()=> _Expend();
}

class _Expend extends State<Expend>{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        color: Colors.purple,
        child: ExpansionTile(
          backgroundColor: Colors.purple,
          title: Text('Expansion', style: TextStyle(fontSize: 30, color: Colors.white)),
          subtitle: Text('This is expansion', style: TextStyle(fontSize: 20, color: Colors.white)),
          trailing: Icon(Icons.download, color: Colors.white),
          children: [
            Container(
              height: 50, 
              child: Icon(Icons.alarm, color: Colors.white, size: 35)
            )
          ],
        )
      ));
}}