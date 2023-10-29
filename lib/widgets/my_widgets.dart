import 'package:flutter/material.dart';



  myContainer(String text) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        height: 100,
        color: Colors.blue[100],
        child: Center(
          child: Text(text,style:TextStyle(fontSize: 40)),
        ),
      ),
    );
  }

  myListView(){
    /*return ListView.builder(
      itemCount: controller.table.length,
      itemBuilder: (context, index) {
        return  myContainer(controller.table[index]);
      },
    );*/
  }

