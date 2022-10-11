import "package:flutter/material.dart"; //import can be anything like curptoino , material or widgets

//main method is entry point of flutter
void main() {
  runApp(myApp());
}

//myApp class

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child:const Text("hello world"),
          ),
        ),
      ),
    );
  }
}
