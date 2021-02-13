import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:sapling/main.dart';
import 'package:sapling/screen/login_screen.dart';

class Recovery_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
            ),
            // height: 500.0,
            child: Column(
              children: [

                TextLiquidFill(
                  text: 'Recovery',
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

                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Column(
                  children: [
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => (Login_screen())),
                        );

                      },
                      color: Colors.green,
                      child: Text(
                        "Send",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Colors.white),
                      ),
                    ),

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
