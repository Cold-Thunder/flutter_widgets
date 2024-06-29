import 'package:flutter/material.dart';

class Animated extends StatefulWidget{
  @override
  _Animated createState()=> _Animated();
}

class _Animated extends State<Animated>{
  bool? isOk = false;
  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        height: 50, 
        child: AnimatedCrossFade(
          firstChild: Container(
            child: InkWell(
              onTap: (){
                setState((){
                  isOk = true;
                });
              },
              child: Container(
                alignment: Alignment.center, 
                height: 50,
                width:100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      offset: Offset(1,1),
                      color: Colors.grey, 
                    )
                  ]
                ),
                child: Text('Click', style: TextStyle(fontSize: 23, color: Colors.white))
              )
            )
          ),
          secondChild: InkWell(
            onTap: (){
              setState((){
                isOk = false;
              });
            },
          child: Container(
              child: Text('This is greeting message', style: TextStyle(fontSize: 30))
          )),
          crossFadeState: isOk == false ? CrossFadeState.showFirst: CrossFadeState.showSecond,
          duration:Duration(seconds: 1)
        )
      )
    );
  }
}