import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(child: Column(children: <Widget>[ImageSec()])));
  }
}

class ImageSec extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var heg = MediaQuery.of(context).size.height;
    var wid = MediaQuery.of(context).size.width;
    var cardWid = (wid / 100) * 90;
    return SafeArea(
        child: Container(
            alignment: Alignment.center,
            height: (heg / 100) * 95,
            width: wid,
            color: Colors.white,
            child: Container(
                height: 100,
                width: cardWid,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.grey,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.7),
                        blurRadius: 5,
                        offset: Offset(3, 3))
                  ],
                ),
                child: Row(children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    height: 100,
                    width: (cardWid / 100) * 40,
                    child: Image.asset('assets/images/image.jpg',
                        fit: BoxFit.fill),
                  ),
                  Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 5, right: 5),
                      height: 100,
                      width: (cardWid / 100) * 60,
                      child: Text('This is my image',
                          style: TextStyle(fontSize: 20, color: Colors.white)))
                ]))));
  }
}
