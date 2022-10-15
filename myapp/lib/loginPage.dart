import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
          child: Container(
            decoration: BoxDecoration(
              border: Border.all()
            ),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.center, //align items
              mainAxisAlignment: MainAxisAlignment.center, // justify content
              children : const [
                  Text(
                "hey this is an example",
                style: TextStyle(
                  color: Color.fromARGB(255, 35, 106, 164),
                  fontSize: 20,
                ),
              ),
              SizedBox( // sizebox is used to give space like margin
                height: 20,
              ),
              Text(
                "hello world",
                style: TextStyle(
                  color: Color.fromARGB(255, 35, 106, 164),
                  fontSize: 20,
                ),
              ),
              ] 
            ),
          )),
    );
  }
}
