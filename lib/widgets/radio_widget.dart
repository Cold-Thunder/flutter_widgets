import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioWidget extends StatelessWidget{
  late String value;
  late String gValue;
  late Color? activeColor;
  Function func;
  RadioWidget({
    required this.value,
    required this.gValue,
    required this.func,
    this.activeColor,
    super.key
});
  @override
  Widget build(BuildContext context){
    return Row(
      children:[
        Radio(
          value: value,
          groupValue: gValue,
          onChanged: (val){
            func(val);
          },
          activeColor: activeColor != null ? activeColor : Colors.green,
          splashRadius: 20
        )
      ]
    );
  }
}