import 'dart:io';

import 'package:first_app/pages/Animated.dart';
import 'package:first_app/pages/Expend.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class NewHome extends StatefulWidget {
  @override
  _NewHome createState() => _NewHome();
}

class _NewHome extends State<NewHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: <Widget>[
      Expend(),
      Checker(),
      ImgPicker(),
      DissCom(),
      Animated(),
    ]));
  }
}

class Checker extends StatefulWidget {
  @override
  _Checker createState() => _Checker();
}

class _Checker extends State<Checker> {
  bool? _isOk = false;

  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    return Center(
        child: Container(
            width: wid,
            child: Column(children: [
              Text(_isOk == true ? "Is checked" : "Is not checked",
                  style: TextStyle(fontSize: 25, color: Colors.black)),
              Checkbox(
                  value: _isOk,
                  onChanged: (val) {
                    setState(() {
                      _isOk = val;
                    });
                  })
            ])));
  }
}

class ImgPicker extends StatefulWidget {
  @override
  _ImgPicker createState() => _ImgPicker();
}

class _ImgPicker extends State<ImgPicker> {
  File? _imgPick;
  final picker = ImagePicker();

  Future ImgPick() async {
    var img = await picker.pickImage(source: ImageSource.camera);
    if (img != null) {
      setState(() {
        _imgPick = File(img.path);
      });
    }
  }

  Future BrowImg() async {
    var img = await picker.pickImage(source: ImageSource.gallery);
    if (img != null) {
      setState(() {
        _imgPick = File(img.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    return Center(
        child: Container(
            height: 300,
            width: wid,
            child: Column(children: <Widget>[
              Center(
                  child: Container(
                alignment: Alignment.center,
                height: 200,
                width: wid,
                color: Colors.blue,
                child: _imgPick != null
                    ? Image.file(_imgPick!)
                    : Text("Please capture a picture!",
                        style: TextStyle(fontSize: 30, color: Colors.white)),
              )),
              Center(
                  child: Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                    FloatingActionButton.extended(
                        label: Icon(Icons.camera, color: Colors.white),
                        backgroundColor: Colors.blue,
                        onPressed: () {
                          ImgPick();
                        }),
                    FloatingActionButton.extended(
                        label: Icon(Icons.browse_gallery, color: Colors.white),
                        backgroundColor: Colors.green,
                        onPressed: () {
                          BrowImg();
                        })
                  ])))
            ])));
  }
}


class DissCom extends StatefulWidget{
  @override
  _DissCom createState()=> _DissCom();
}

class _DissCom extends State<DissCom>{

  @override
  Widget build(BuildContext context){
    var wid = MediaQuery.of(context).size.width;
    return Center(
      child:Container(
        width: (wid/100)*95, 
        child: Dismissible(
          key: ValueKey('1243'), 
          secondaryBackground: Container(
            padding: EdgeInsets.only(right: 10),
            alignment: Alignment.centerRight,
            color: Colors.orange,
            child: Icon(Icons.delete, color: Colors.white),
          ),
          background: Container(
            padding: EdgeInsets.only(left: 10),
            alignment: Alignment.centerLeft,
            color: Colors.red,
            child: Icon(Icons.delete, color: Colors.white)
          ),
          child: ListTile(
            tileColor: Colors.blueGrey,
            title: Text("This is dismissble", style: TextStyle(fontSize: 25, color: Colors.white)),
            trailing: Icon(Icons.man_3_sharp, color: Colors.white)
          ))
      )
    );
  }
}