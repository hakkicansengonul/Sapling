import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:sapling/screen/recovery_screen.dart';
import 'package:sapling/screen/register_screen.dart';

class Login_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40.0),
          ),
          // height: 500.0,
          child: SingleChildScrollView(
            child: Column(
              children: [

                TextLiquidFill(
                  text: 'Login',
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
                        obscureText: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Email',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
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
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Column(
                  children: [
                    FlatButton(
                      onPressed: () {},
                      color: Colors.green,
                      child: Text(
                        "Login",
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
                                builder: (context) => (Recovery_screen())),
                          );
                        },
                        child: Text("I forgot my password")),


                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => (Register_screen())),
                          );
                        },
                        child: Text("Register")),
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
