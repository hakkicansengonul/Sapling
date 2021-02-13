import 'package:flutter/material.dart';
import 'package:sapling/main.dart';
import 'package:sapling/new_data/trees.dart';
import 'package:sapling/new_data/list_basket.dart';
import 'package:sapling/new_data/list_tile.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Payment_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: CircleAvatar(
                radius: 10.0,
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2020/05/17/20/21/cat-5183427_1280.jpg"),
              ),
            ),
            list_tile(
              text: 'My Seedlings',
            ),
            list_tile(
              text: 'My Registered cards',
            ),
            list_tile(
              text: 'Settings',
            ),
            ListTile(
              tileColor: Colors.white12,
              title: Text('Sign Out'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => user_screen()),
                );
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextLiquidFill(
                  text: 'Payment',
                  waveColor: Colors.green,
                  boxBackgroundColor: Colors.blueGrey,
                  textStyle: TextStyle(
                    fontSize: 80.0,
                    fontWeight: FontWeight.bold,
                  ),
                  boxHeight: 90.0,
                ),
              
                Container(
                  height: 500,
child: ListView(
  children: [
    TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Credit Card Number',
                ),
    ),
    SizedBox(height: 10.0,),
    TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name On Credit Card',
                ),
    ),
    SizedBox(height: 10.0,),
    TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'validity date',
                ),
    ),
    SizedBox(height: 10.0,),
    TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Card Verification Code (CVC)',
                ),
    ),
    SizedBox(height: 15.0,),

    Padding(
      padding: const EdgeInsets.only(left: 90.0,right: 90.0),
      child: ElevatedButton(
        onPressed: () {

          Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (user_screen())),
          );
        },
        child: Text(
          "Complete The Payment",
        ),
      ),
    )
  ],
),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
