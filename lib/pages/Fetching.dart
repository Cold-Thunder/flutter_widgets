import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Fetching extends StatefulWidget {
  @override
  _Fetching createState() => _Fetching();
}

class _Fetching extends State<Fetching> {
  var datas;
  Future getData() async {
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await http.get(uri);

    try {
      if (response.statusCode == 200) {
        setState(() {
          datas = json.decode(response.body);
        });
      }
    } catch (err) {
      Exception(err);
    }
  }
  @override
  void initState(){
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var hei = MediaQuery.of(context).size.height;

    return Center(
        child: Container(
            child: Column(
      children: [
        ElevatedButton(
            onPressed: () {
              getData();
            },
            child: Text('Show Data', style: TextStyle(fontSize: 25))),
        Container(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            height: (hei / 100) * 70,
            width: wid,
            child: ListView.builder(
                itemCount: datas == null ? 0 : datas.length,
                itemBuilder: (context, index) {
                  return Container(
                      margin: EdgeInsets.only(top: 5),
                      width: (wid / 100) * 95,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: ListTile(
                        key: ValueKey(datas[index]['id']),
                        // tileColor: Colors.grey,
                        title: Text('${datas[index]['title']}',
                            style: TextStyle(fontSize: 20)),
                      ));
                }))
      ],
    )));
  }
}
