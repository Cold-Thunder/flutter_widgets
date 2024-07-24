import 'package:first_app/widgets/radio_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormPract extends StatefulWidget{
  @override
  _FormPract createState()=> _FormPract();
}
class _FormPract extends State<FormPract>{
  String _gender = 'm';

  void genderChange(val){
    setState((){
      _gender = val;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Practice',style: TextStyle(
            fontSize: 24,
            color: Colors.white,
        )),
        backgroundColor: Colors.green,
        iconTheme: const IconThemeData(color: Colors.white)
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                child: Column(
                  children: [
                    Row(
                        children: [
                          RadioWidget(
                              value: 'm',
                              gValue: _gender,
                              func: genderChange,
                              ),
                          Text('Male', style: TextStyle(
                            fontSize: 22,
                            color: Colors.black
                          ))
                        ]

                    ),
                    Row(
                        children: [
                          RadioWidget(value: 'f', gValue: _gender, func: genderChange),
                          Text('Female',style: TextStyle(
                            fontSize: 22,
                            color: Colors.black
                          ))
                        ]
                      )
                  ]
                )
              )
            ]
          )
        )
      )
    );
  }
}