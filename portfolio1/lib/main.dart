import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MY FIRST APP'),
        ),
        body: Container(decoration: BoxDecoration(color: Colors.red,),child: Text('HI'),
        )),
      );,;
    )
  }
}
