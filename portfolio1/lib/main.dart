import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    theme: ThemeData(primarySwatch: const Color.fromARGB(255, 158, 158, 158)),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: Text("PORTFOLIO")),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                width: 500,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.red,
                  gradient: LinearGradient(colors: [
                    Colors.white,
                    Colors.red,
                    Colors.white,
                    Colors.red,
                    Colors.white,
                    Colors.red,
                    Colors.white,
                    Colors.red,
                    Colors.white,
                    Colors.red,
                    Colors.white,
                    Colors.red,
                    Colors.white,
                    Colors.red,
                    Colors.white,
                    Colors.red,
                    Colors.white,
                    Colors.red,
                    Colors.white,
                    Colors.red,
                  ]),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 10,
                    )
                  ],
                ),
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Image.asset(
                  "assets/hk2.png",
                  alignment: Alignment(-1, -1),
                  height: 100,
                  width: 160,
                )),
            Container(
              child: AnimatedTextKit(
                animatedTexts: [
                  RotateAnimatedText('EAT',
                      alignment: Alignment(0.4, -4),
                      textStyle: TextStyle(fontSize: 40)),
                  RotateAnimatedText('SLEEP',
                      alignment: Alignment(0.4, -4),
                      textStyle: TextStyle(fontSize: 40)),
                  RotateAnimatedText('CODE',
                      alignment: Alignment(0.4, -4),
                      textStyle: TextStyle(fontSize: 40)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
