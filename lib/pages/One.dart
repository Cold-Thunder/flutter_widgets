import 'package:first_app/screens/Cards.dart';
import 'package:flutter/material.dart';

class One extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        children: <Widget>[
          Text('One', style: TextStyle(fontSize: 30, color: Colors.black)),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3,
                  offset: Offset(3,3)
                )
              ],
              borderRadius: BorderRadius.all(Radius.circular(10)),
              gradient: LinearGradient(colors: [Colors.red,Colors.blue]),
            ),
          ),
          ButtonsSec()
        ]
      ),
    );
  }
}

class ButtonsSec extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Center(
      child: InkWell(
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 20), 
          height: 50,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            color: Colors.blue,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(1,3),
                blurRadius: 3,
                
              )
            ]
          ),
          child: Text('Show More', style: TextStyle(fontSize: 25, color: Colors.white))
        ),
        onTap: (){
          Navigator.push(context,
            MaterialPageRoute(builder: (context)=>Cards())
          );
        }
      )
    );
  }
}