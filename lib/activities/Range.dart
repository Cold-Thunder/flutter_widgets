import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Range extends StatefulWidget{
  @override
  _Range createState()=> _Range();
}

class _Range extends State<Range>{
  RangeValues values = RangeValues(0.0,100.0);
  @override
  Widget build(BuildContext context){
    RangeLabels labels = RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Range Value', style: TextStyle(fontSize: 22, color: Colors.white)),
        backgroundColor: Colors.blue,
        iconTheme:const IconThemeData(
          color: Colors.white
        )
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                          width: 2,
                          color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('${values.start.toInt()}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30
                          )
                      )
                    ),
                    Container(
                      height: 50,
                      child: Row(
                        children: [
                          const Icon(Icons.arrow_back_rounded, size: 50, color: Colors.grey),
                          const Icon(Icons.arrow_forward_rounded, size: 50, color: Colors.grey,)
                        ]
                      )
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        border: Border.all(
                          width: 2,
                          color:Colors.black
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('${values.end.toInt()}', style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ))
                    )
                  ]
                )
              ),
          RangeSlider(
            values: values,
            labels: labels,
            divisions: 20,
            min: 0,
            max: 100,
            activeColor: Colors.blue,
            inactiveColor: Colors.blue.shade100,
            onChanged: (newValues){
              values = newValues;
              setState((){

              });
            },
          )
            ]
          )
        )
      )
    );
  }
}