import "package:flutter/material.dart"; //import can be anything like curptoino , material or widgets
import "HomePage.dart";
import "loginPage.dart";

//main method is entry point of flutter
void main() {
  runApp(myApp());
}

//myApp class

// ignore: camel_case_types
class myApp extends StatelessWidget {
  final bool isauth = false;
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),// if "/" routes assigned dont use that
      // initialRoute: "/any_other_route_you_want_to_open_when_a_app_start",
      routes: {
        "/" : (context)=> isauth ? const HomePage() : const LoginPage(), //conditional rendering by using flag
        // "/add-post" :(context) => AddPost();
        },
    );
  }
}
