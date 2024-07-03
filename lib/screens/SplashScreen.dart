import 'dart:async';

import 'package:first_app/screens/MyHomepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget{
  @override
  _Splash createState()=> _Splash();
}

class _Splash extends State<Splash>{
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context)=>Myhomepage()),);
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: Colors.purple,
        child: const Center(
          child: Text('Kids Learning',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
              ))
        )
      )
    );
  }
}