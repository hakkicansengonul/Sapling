import 'package:flutter/material.dart';
import 'package:sapling/new_data/list_basket.dart';
import 'package:sapling/screen/second_screen.dart';
import 'list_basket.dart';

class Tress extends StatelessWidget {
  String linkurl;

  String Name;
  Tress({
    this.linkurl,
    this.Name,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(color: Colors.blueGrey,

      child: InkWell(
        onTap: () {

        },
        child: Container(
          width: 160.0,
          decoration: BoxDecoration(color: Colors.blueGrey,
            borderRadius: BorderRadius.circular(40.0),
            image:
                DecorationImage(image: NetworkImage(linkurl), fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
