import 'package:flutter/material.dart';

class DataTab extends StatefulWidget{
  @override
  _DataTab createState()=> _DataTab();
}

class _DataTab extends State<DataTab>{
  @override
  Widget build(BuildContext context){
    return Center(
      child: Container(
        alignment: Alignment.center,
        child: Text('data table')
      )
    );
  }
}