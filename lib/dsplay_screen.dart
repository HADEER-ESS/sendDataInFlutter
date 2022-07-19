
// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, camel_case_types
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Display extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return  _display_page();
  }

}
 class _display_page extends State<Display>{


   String name = '' ;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Display Page"),
       ),
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(
               child: Text(
                 "Hello $name",
                 style: TextStyle(fontSize: 25),
                 ),
             ),
              ElevatedButton(
                onPressed: () {
                  show();
                }
                , child: Text("show")
                ),
           ],
         ),
       ),
     );
   }
    void show() async{
      var shared = await SharedPreferences.getInstance();
       var text = shared.getString("user_name");
       setState(() {
         name = text ?? '';
       });
      print("text.. $text");
      print('name... $name');
    }

 }




  // String name ;

  // Display(this.name);
  
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //        title: Text("Display Page"),
  //      ),
  //      body: Center(
  //        child: Column(
  //          mainAxisAlignment: MainAxisAlignment.center,
  //          children: [
  //            Container(
  //              child: Text(
  //                "Hello $name",
  //                style: TextStyle(fontSize: 25),
  //                ),
  //            ),
  //          ],
  //        ),
  //      ),
  //   );
  // }