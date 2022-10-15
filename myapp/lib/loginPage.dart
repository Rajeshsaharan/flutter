
import "package:flutter/material.dart";



//always define a BoxDecoration(not a Widget subclass ) and set a border for better inspection

BoxDecoration myborder(){
  return BoxDecoration(
    border: Border.all(
      color: Colors.red,
      width: 1
    )
  );
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
          child: Container(
            decoration:myborder(),
            child: Column( // colums  === flex ==> flex-direction : column
            //row -====> flex-direction : row 
              crossAxisAlignment:CrossAxisAlignment.stretch, //align items
              mainAxisAlignment: MainAxisAlignment.center, // justify content
              children :  [
                  Container(
                    decoration: myborder(),
                    child: const Text(
                                  "hey this is an example",
                                  style: TextStyle(
                    color: Color.fromARGB(255, 35, 106, 164),
                    fontSize: 20,
                                  ),
                                ),
                  ),
              Container(
                decoration: myborder(),
                child: const SizedBox( // sizebox is used to give space like margin
                  height: 20,
                ),
              ),
              Container(
                decoration: myborder(),
                child: const Text(
                  "hello world",
                  style:  TextStyle(
                    color:  Color.fromARGB(255, 35, 106, 164),
                    fontSize: 20,
                  ),
                ),
              ),
              ] 
            ),
          )),
    );
  }
}
