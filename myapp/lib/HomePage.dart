import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true, // for centering title by default true for ios
        title: Text("hello world"),
      ),
      body: Center(
        child: Container(
          color: Colors.blue,
          child: Text("hello world",
          style: TextStyle(fontSize: 20),
          ),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
