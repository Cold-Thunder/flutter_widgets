import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Three extends StatefulWidget {
  @override
  _ThreeState createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            child: Column(children: [
      ElevatedButton(
        child: Text('Click', style: TextStyle(fontSize: 25)),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return Center(
                    child: Container(
                        child: Column(
                  children: <Widget>[
                    ListTile(
                        title: Text('This is list'),
                        trailing: Icon(Icons.phone)),
                    ListTile(
                        title: Text('This is list'),
                        trailing: Icon(Icons.phone)),
                    ListTile(
                        title: Text('This is list'),
                        trailing: Icon(Icons.phone)),
                    ListTile(
                        title: Text('This is list'),
                        trailing: Icon(Icons.phone)),
                  ],
                )));
              });
        },
      ),
      ElevatedButton(
          child: Text('Alert', style: TextStyle(fontSize: 25)),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                      title: Text('Alert',
                          style: TextStyle(fontSize: 30, color: Colors.red)),
                      content: Text('This is alert box',
                          style: TextStyle(fontSize: 25)),
                      actions: <Widget>[
                        InkWell(
                            child: Text('Ok', style: TextStyle(fontSize: 25)),
                            onTap: () {
                              Navigator.pop(context);
                              print('pressed ok');
                            })
                      ]);
                });
          }),
      ElevatedButton(
        child: Text('Show', style: TextStyle(fontSize: 25)),
        onPressed: () {
          showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                    child: Stack(
                  alignment: Alignment.topCenter,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(5),
                        height: 300,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('About Me', style: TextStyle(fontSize: 30)),
                              Text(''),
                            ])),
                    Positioned(
                      top: -50,
                      child: Container(
                        alignment: Alignment.center,
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 10,
                                  offset: Offset(1, 1),
                                )
                            ],
                          ),
                          child: CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage("assets/images/image.jpg"),
                          )),
                    )
                  ],
                ));
              });
        },
      ),
      ElevatedButton(
        child: Text('Toast', style: TextStyle(fontSize: 25)),
        onPressed: (){
          Fluttertoast.showToast(
            msg: "this is a Toast message",
            fontSize: 25,
            toastLength: Toast.LENGTH_LONG,
            textColor: Colors.white,
            backgroundColor: Colors.blue,
            gravity: ToastGravity.TOP,

          );
        },
      )
    ])));
  }
}
