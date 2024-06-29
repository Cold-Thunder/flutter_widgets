import 'package:flutter/material.dart';

class CardView extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Center(
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: Center(
            child: Text('This is Box', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white))
          )
        )
      ),
    );
  }
}