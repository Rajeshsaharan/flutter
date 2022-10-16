import "package:flutter/material.dart";

//always define a BoxDecoration(not a Widget subclass ) and set a border for better inspection

BoxDecoration myborder() {
  return BoxDecoration(border: Border.all(color: Colors.red, width: 1));
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
          child: Container(
        decoration: myborder(),
        child: SingleChildScrollView(
          // single child widget can add a scroll on an child view if things gets overflow
          child: Form(
            key:
                _formKey, // now we can do everything with this key like submit handler
            child: Column(
                // colums  === flex ==> flex-direction : column
                //row -====> flex-direction : row
                crossAxisAlignment: CrossAxisAlignment.center, //align items
                mainAxisAlignment: MainAxisAlignment.center, // justify content
                children: [
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
                    child: const SizedBox(
                      // sizebox is used to give space like margin
                      height: 20,
                    ),
                  ),
                  Container(
                    decoration: myborder(),
                    child: TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "please enter your phone number";
                        }
                      },
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      onChanged: (value) {},
                    ),
                  ),
                  Container(
                    decoration: myborder(),
                    child: const Text(
                      "hello world",
                      style: TextStyle(
                        color: Color.fromARGB(255, 35, 106, 164),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  //making container clickable with Inkable
                  InkWell(
                    //making conatiner clickable
                    onTap: () => {
                      if (_formKey.currentState.validate())
                        {
                          //do something
                        }
                    }, //anything you want to do
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 2),
                      width: 100,
                      height: 100,
                      child: const Text(
                        "hello world",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  )
                  // ElevatedButton(
                  //   onPressed: (){
                  //     Navigator.pushNamed(context, '/'); // go to homepage with auth true
                  //   },
                  //   child: Text("Login"))
                ]),
          ),
        ),
      )),
    );
  }
}
