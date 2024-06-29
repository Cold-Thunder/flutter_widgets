import 'package:first_app/screens/DetailsPage.dart';
import 'package:flutter/material.dart';

class Herowidget extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Center(
      child: Container(
        child: InkWell(
          child: Hero(
            tag: 'add',
            child: Icon(
              Icons.camera,
              size: 50,
              color: Colors.red
            ),
          ),
          onTap: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=> DetailsPage()));
            }
        )
      ),
    );
  }
}