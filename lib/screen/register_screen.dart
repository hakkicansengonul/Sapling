import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:sapling/screen/login_screen.dart';

class Register_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Container(

          height: 450.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0),
          ),
          // height: 500.0,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                 // height: 85.0,
                ),
                TextLiquidFill(
                  text: 'Register',
                  waveColor: Colors.green,
                  boxBackgroundColor: Colors.blueGrey,
                  textStyle: TextStyle(
                    fontSize: 80.0,
                    fontWeight: FontWeight.bold,
                  ),
                  boxHeight: 90.0,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: TextField(
                        autofocus: true,
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Retype Your Password',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Column(
                  children: [
                    FlatButton(
                      onPressed: () {},
                      color: Colors.green,
                      child: Text(
                        "Register",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Colors.white),
                      ),
                    ),



                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => (Login_screen())),
                          );
                        },
                        child: Text("Login")),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
