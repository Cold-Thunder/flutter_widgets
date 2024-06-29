import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class TransComp extends StatefulWidget {
  @override
  _Transcomp createState() => _Transcomp();
}

class _Transcomp extends State<TransComp> {
  double rad = 0;
  double rot = 0;

  increasing() {
    setState(() {
      rad += 5;
    });
  }

  decreasing() {
    setState(() {
      rad -= 5;
    });
  }

  rotating() {
    setState(() {
      rot += 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    var hei = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;

    return Center(
        child: Container(
            alignment: Alignment.center,
            height: hei,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Transform.rotate(
                      angle: rot,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(rad)),
                          color: Colors.blue,
                        ),
                        height: 200,
                        width: 200,
                      )),
                  Container(
                      margin: EdgeInsets.only(top: 50),
                      alignment: Alignment.center,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                          child: Row(
                        children: <Widget>[
                          ElevatedButton(
                              onPressed: () {
                                increasing();
                              },
                              child: Text('Increase',
                                  style: TextStyle(fontSize: 25))),
                          ElevatedButton(
                              onPressed: () {
                                decreasing();
                              },
                              child: Text('Decrease',
                                  style: TextStyle(fontSize: 25))),
                          ElevatedButton(
                              onPressed: () {
                                rotating();
                              },
                              child: Text('Rotate',
                                  style: TextStyle(fontSize: 25)))
                        ],
                      )))
                ])));
  }
}
