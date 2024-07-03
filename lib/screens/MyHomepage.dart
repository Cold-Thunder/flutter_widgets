import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:first_app/pages/DataTab.dart';
import 'package:first_app/pages/DatePick.dart';
import 'package:first_app/pages/Fetching.dart';
import 'package:first_app/pages/ImagePick.dart';
import 'package:first_app/pages/NewHome.dart';
import 'package:first_app/pages/One.dart';
import 'package:first_app/pages/Three.dart';
import 'package:first_app/pages/TransCom.dart';
import 'package:first_app/pages/Two.dart';
import 'package:first_app/screens/CardView.dart';
import 'package:first_app/screens/Herowidget.dart';
import 'package:first_app/screens/StateFullWidPrac.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Myhomepage extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<Myhomepage>{
  int _currentIndex = 0;
  bool isOne = true;
  bool isTwo = false;
  bool isThree = false;
  bool isFour = false;
  var pages = [One(), Two(), Three(), ImagePick()];
  void _changepage(int index){
    setState((){
      _currentIndex = index;
      switch(index){
        case 0: isOne = true;
                isTwo= false;
                isThree = false;
                isFour = false;
        break;
        case 1: isTwo = true;
                isOne = false;
                isThree = false;
                isFour = false;
        break;
        case 2: isThree = true;
                isOne = false;
                isTwo = false;
                isFour = false;
        break;
        case 3: isThree = false;
                isOne = false;
                isTwo = false;
                isFour = true;
                break;
      }
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
          bottomNavigationBar: CurvedNavigationBar(
            index: 0,
            onTap: _changepage,
            color: Colors.purple,
            backgroundColor: Colors.transparent,
            buttonBackgroundColor: Colors.purple,
            animationCurve: Curves.easeIn,
            animationDuration: Duration(milliseconds: 600),
            items: [
             const Icon(Icons.add, size: 30, color: Colors.white),
             const Icon(Icons.camera, size: 30, color: Colors.white),
             const Icon(Icons.message, size: 30, color: Colors.white),
              const Icon(Icons.image, size: 30, color: Colors.white)
            ]
          ),
            floatingActionButton: FloatingActionButton.extended(
                onPressed: (){print('Floating button');}, 
                label: Icon(Icons.edit, color: Colors.white),
                backgroundColor: Colors.blue,
                splashColor: Colors.pink,
              ),
            appBar: AppBar(
                title:const Text('First app',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                backgroundColor: Colors.purple),
            body: DataTab()
            );
  }
}

