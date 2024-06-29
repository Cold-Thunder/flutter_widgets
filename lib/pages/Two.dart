import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

List<Map> datas = [
  {"name": "mohammad", "id": 1},
  {"name": "Hemal", "id": 2},
  {"name": "mohammad Hemal", "id": 3},
  {"name": 'hemal mohammad', "id": 4},
  {"name": "mohammad", "id": 1},
  {"name": "Hemal", "id": 2},
  {"name": "mohammad Hemal", "id": 3},
  {"name": 'hemal mohammad', "id": 4},
  {"name": "mohammad", "id": 1},
  {"name": "Hemal", "id": 2},
  {"name": "mohammad Hemal", "id": 3},
  {"name": 'hemal mohammad', "id": 4},
  {"name": "mohammad", "id": 1},
  {"name": "Hemal", "id": 2},
  {"name": "mohammad Hemal", "id": 3},
  {"name": 'hemal mohammad', "id": 4},
  {"name": "mohammad", "id": 1},
  {"name": "Hemal", "id": 2},
  {"name": "mohammad Hemal", "id": 3},
  {"name": 'hemal mohammad', "id": 4},
  {"name": "mohammad", "id": 1},
  {"name": "Hemal", "id": 2},
  {"name": "mohammad Hemal", "id": 3},
  {"name": 'hemal mohammad', "id": 4},
  {"name": "mohammad", "id": 1},
  {"name": "Hemal", "id": 2},
  {"name": "mohammad Hemal", "id": 3},
  {"name": 'hemal mohammad', "id": 4},
  {"name": "mohammad", "id": 1},
  {"name": "Hemal", "id": 2},
  {"name": "mohammad Hemal", "id": 3},
  {"name": 'hemal mohammad', "id": 4},
  {"name": "mohammad", "id": 1},
  {"name": "Hemal", "id": 2},
  {"name": "mohammad Hemal", "id": 3},
  {"name": 'hemal mohammad', "id": 4},
  {"name": "mohammad", "id": 1},
  {"name": "Hemal", "id": 2},
  {"name": "mohammad Hemal", "id": 3},
  {"name": 'hemal mohammad', "id": 4},
  {"name": "mohammad", "id": 1},
  {"name": "Hemal", "id": 2},
  {"name": "mohammad Hemal", "id": 3},
  {"name": 'hemal mohammad', "id": 4},
  {"name": "mohammad", "id": 1},
  {"name": "Hemal", "id": 2},
  {"name": "mohammad Hemal", "id": 3},
  {"name": 'hemal mohammad', "id": 4},
  {"name": "mohammad", "id": 1},
  {"name": "Hemal", "id": 2},
  {"name": "mohammad Hemal", "id": 3},
  {"name": 'hemal mohammad', "id": 4},
  {"name": "mohammad", "id": 1},
  {"name": "Hemal", "id": 2},
  {"name": "mohammad Hemal", "id": 3},
  {"name": 'hemal mohammad', "id": 4},
  {"name": "mohammad", "id": 1},
  {"name": "Hemal", "id": 2},
  {"name": "mohammad Hemal", "id": 3},
  {"name": 'hemal mohammad', "id": 4},
  {"name": "mohammad", "id": 1},
  {"name": "Hemal", "id": 2},
  {"name": "mohammad Hemal", "id": 3},
  {"name": 'hemal mohammad', "id": 4},
  {"name": "mohammad", "id": 1},
  {"name": "Hemal", "id": 2},
  {"name": "mohammad Hemal", "id": 3},
  {"name": 'hemal mohammad', "id": 4},
  {"name": "mohammad", "id": 1},
  {"name": "Hemal", "id": 2},
  {"name": "mohammad Hemal", "id": 3},
  {"name": 'hemal mohammad', "id": 4},
];

class Two extends StatefulWidget {
  @override
  _TwoState createState() => _TwoState();
}

class _TwoState extends State<Two> {
  var _value = 20.0;
  var _sel = "Please select one";
  var _name;

  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
          child: Column(children: <Widget>[
        Container(
          alignment: Alignment.center,
          height: 300,
          width: wid,
          color: Colors.blue,
          child: Text("This is slider example",
              style: TextStyle(fontSize: _value, color: Colors.white)),
        ),
        Slider(
          min: 20,
          max: 50,
          value: _value,
          activeColor: Colors.red,
          inactiveColor: Colors.grey,
          thumbColor: Colors.red,
          onChanged: (value) {
            setState(() {
              _value = value;
            });
          },
        ),
        Container(
            child: Text(_name != null ? _name : "Please select one!",
                style: TextStyle(fontSize: 30, color: Colors.black))),
        DropdownButton(
          value: _name,
          iconSize: 30,
          elevation: 3,
          items: [
            DropdownMenuItem(
              value: "Hemal",
              child: Text("Hemal",
                  style: TextStyle(fontSize: 25, color: Colors.black)),
            ),
            DropdownMenuItem(
                value: "Mohammad",
                child: Text('Mohammad',
                    style: TextStyle(fontSize: 25, color: Colors.black)))
          ],
          onChanged: (val) {
            setState(() {
              _name = val;
            });
          },
        ),
        Dismissible(
            key: ValueKey('0'),
            secondaryBackground: Container(
              color: Colors.blue,
              child: Icon(Icons.delete, size: 25, color: Colors.white)
            ),
            background: Container(
              color: Colors.red,
              child: Icon(Icons.delete, size: 25, color: Colors.white)
            ),
            child: ListTile(
              title: Text('Title', style: TextStyle(fontSize: 25)),
              subtitle: Text('this is title', style: TextStyle(fontSize: 20)),
              trailing: Icon(Icons.fork_right),
            ))
      ])),
    );
  }
}

Widget card(var name, var id) {
  var nameDat = name;
  var idDat = id;
  return Center(
      child: Container(
    alignment: Alignment.centerLeft,
    height: 80,
    width: 300,
    margin: EdgeInsets.only(top: 5, bottom: 5),
    padding: EdgeInsets.only(left: 10, right: 5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.lightBlue,
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 10, offset: Offset(3, 3))
        ]),
    child: Text('${idDat}. ${nameDat}',
        style: TextStyle(fontSize: 25, color: Colors.white)),
  ));
}
