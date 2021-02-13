import 'package:flutter/material.dart';

class list_basket extends StatelessWidget {
  String name;
  String number;

  list_basket({this.name, this.number});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Text("$number x Adet"),
      leading: IconButton(
        icon: Icon(
          Icons.remove_circle,
          color: Colors.red,
        ),
        onPressed: () {},

      ),
    );
  }
}
