import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePick extends StatefulWidget {
  @override
  _ImagePicking createState() => _ImagePicking();
}

class _ImagePicking extends State<ImagePick> {
  File? _image;

  final picker = ImagePicker();
  Future ImagePi()async{
    var img = await picker.pickImage(source: ImageSource.camera);
    if(img != null){
      setState((){
        _image = File(img.path);
      });
    }
  }

  Future GalImg()async{
    var img= await picker.pickImage(source: ImageSource.gallery);
    if(img != null){
      setState((){
        _image = File(img.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;
    return Center(
        child: Container(
            child: Column(children: <Widget>[
      Container(
          alignment: Alignment.center,
          height: (hei / 100) * 50,
          width: wid,
          color: Colors.lightBlue,
          child: _image == null
              ? Text('No image to show',
                  style: TextStyle(fontSize: 30, color:Colors.white,  fontWeight: FontWeight.bold))
              : Image.file(_image!)),
      Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: 10),
              width: wid,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FloatingActionButton(
                    backgroundColor: Colors.blue,
                    splashColor: Colors.red,
                    onPressed: (){ImagePi();},
                    child: Icon(Icons.camera, color: Colors.white, size: 35)
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.brown,
                    splashColor: Colors.red,
                    onPressed: (){GalImg();},
                    child: Icon(Icons.image, color: Colors.white, size: 35)
                  )
                ],
              ))
    ])));
  }
}
