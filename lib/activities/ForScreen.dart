import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormScreen extends StatefulWidget{
  @override
  _FormScreen createState()=>_FormScreen();
}

class _FormScreen extends State<FormScreen>{
  submit(){
    print('hellloa');
  }
  var email = TextEditingController();
  var password = TextEditingController();

  var user = {
    "email": "",
    "password": ""
  };

  var show = true;
  @override
  Widget build(BuildContext context){
    var wid = MediaQuery.of(context).size.width;
    // button style
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      maximumSize: const Size(double.infinity, 50),
      backgroundColor: Colors.purple,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      )
    );


    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Page',
            style: TextStyle(fontSize:25, color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.purple,
        iconTheme:const IconThemeData(color: Colors.white),
        elevation: 5,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding:const EdgeInsets.all(10),
                child: Container(
                  height: 50,

                child: TextField(
                    style:const TextStyle(
                      color: Colors.purple,
                      fontSize: 22,
                    ),
                  controller: email,
                  decoration: InputDecoration(
                    prefixIcon:const Icon(Icons.email, color: Colors.purple),
                    label:const Text('Email', style: TextStyle(fontSize: 22, color: Colors.purple)),
                    hintText: ' Email here...',
                    hintStyle:const TextStyle(
                      fontSize: 22,
                      color: Color.fromRGBO(0,0,0,0.3)
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderSide:const BorderSide(
                        color: Colors.blue,
                        width: 2
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    enabledBorder:OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.purple,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  )
                )
              )
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Container(
                  height: 50,
                  child: TextField(
                    obscureText: show,
                    obscuringCharacter: '*',
                    controller: password,
                    style: const TextStyle(
                      color: Colors.purple,
                      fontSize: 22,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: const TextStyle(
                          fontSize: 22, color: Colors.purple),
                      hintText: ' Password here...',
                      hintStyle: const TextStyle(
                        fontSize: 22,
                        color: Color.fromRGBO(0,0,0,0.3),
                      ),
                      prefixIcon: const Icon(Icons.lock, color: Colors.purple),
                      suffixIcon: IconButton(
                        onPressed: (){
                            setState((){
                              show = !show;
                            });
                        },
                        icon: Icon(show ? Icons.remove_red_eye : Icons.lock, color: Colors.purple)
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:const BorderSide(
                          color: Colors.purple,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.blue,
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10)
                      )
                    )
                  )
                ),
              ),
              Container(
                width: (wid/100)*95,
                child: ElevatedButton(
                  style: buttonStyle,
                  onPressed: (){
                    user["email"] = email.text.toString();
                    user["password"] = password.text.toString();
                    print(user);
                  },
                  child:const Text('Submit',style: TextStyle(fontSize: 22, color: Colors.white))
                )
              )
            ]
          )
        )
    )
    );
  }
}