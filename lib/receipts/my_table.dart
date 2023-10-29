import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTable extends StatelessWidget {
  final String child;

   MyTable({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
      child: Container(
        height: 100,
        color: Colors.blue[100],
        child: Center(
            child: Text(child,style:TextStyle(fontSize: 40)),
        ),

      ),

    );
  }
}