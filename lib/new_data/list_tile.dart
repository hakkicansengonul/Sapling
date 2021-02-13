import 'package:flutter/material.dart';



class list_tile extends StatelessWidget {
  String text;

  list_tile({ this.text}) ;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white12,
      title: Text(text),
      onTap: () {

      },
    );
  }
}