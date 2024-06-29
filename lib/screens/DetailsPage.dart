import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Center(
      child: Container(
        child: Hero(
          tag: 'add',
          child: Icon(
            Icons.camera,
            size: 200,
            color: Colors.blue
          )
        )
      )
    );
  }
}