// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'dsplay_screen.dart';

// ignore: use_key_in_widget_constructors
class Input extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _MyInput();
  }
}

class _MyInput extends State<Input>{

  String name = "" ;
  TextEditingController controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Form"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: controller ,
              decoration: InputDecoration(
                border: OutlineInputBorder() ,
                hintText: "Enter your name", 
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: (){
                saveData(controller.text);
              },
              child: Text("save"),
              ),
              ElevatedButton(
              onPressed: (){ 
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {return Display();} ,
                    )
                      );
              },
              child: Text("Show"),
              ),
          ],
        )
      ),
    );
  }  


  void saveData(String val) async{
    var shared = await SharedPreferences.getInstance();
    shared.setString("user_name" , val);
  }

}