import 'package:flutter/material.dart';

class NewIndividuoList extends StatelessWidget{
  final String name;

  NewIndividuoList({this.name});
  
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(240, 94, 100,1.0),
        title: Text('User'),
      ),
      body: Center(
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("${name}", style: TextStyle(fontSize: 30.0)),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          )
      ),
    );
  }
}
