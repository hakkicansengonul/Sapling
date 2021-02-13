import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'screen/second_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'screen/login_screen.dart';
import 'screen/register_screen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: user_screen());
  }
}

class user_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                    //  height: 150.0,
                    ),
                Container(
                  child: TypewriterAnimatedTextKit(
                    speed: Duration(milliseconds: 200),
                    onTap: () {
                      //print("Tap Event");
                    },
                    text: [
                      "Sow Seedlings",
                    ],
                    textStyle: TextStyle(fontSize: 30.0, fontFamily: "Agne"),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 300.0,
                  width: 300.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(1500.0),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2016/11/19/15/54/hand-1840039_1280.jpg"))),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => (Login_screen())),
                        );
                      },
                      child: Text("Login"),
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Register_screen()),
                        );
                      },
                      child: Text("Register"),
                      color: Colors.green,
                    )
                  ],
                ),
                SizedBox(
                  height: 17.0,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => second_screen(),
                      ),
                    );
                  },
                  child: Text(
                    "Direct Login",
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
