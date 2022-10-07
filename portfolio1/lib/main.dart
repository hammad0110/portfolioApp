import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    theme: ThemeData(primarySwatch: Colors.grey),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Wrap(
        //use vertical to show  on vertical axis
        children: <Widget>[
          Container(
              margin: EdgeInsets.fromLTRB(20, 20, 20, 30),
              alignment: Alignment(0.19, 2),
              child: FloatingActionButton.extended(
                label: Text('ABOUT ME'),
                onPressed: () {
                  //action code for button 2
                },
              )), //button first

          Container(
              alignment: Alignment(0.19, 0.2),
              margin: EdgeInsets.fromLTRB(20, 20, 20, 30),
              child: FloatingActionButton.extended(
                label: Text('SKILLS'),
                onPressed: () {
                  //action code for button 2
                },
              )), // button second

          Container(
              decoration: BoxDecoration(),
              alignment: Alignment(0.19, 0.4),
              margin: EdgeInsets.fromLTRB(20, 20, 20, 30),
              child: FloatingActionButton.extended(
                label: Text('WHY ME? '),
                onPressed: () {
                  //action code for button 2
                },
              )), // button third
          Container(
              alignment: Alignment(0.19, 0.6),
              margin: EdgeInsets.fromLTRB(20, 20, 20, 30),
              child: FloatingActionButton.extended(
                label: Text('CONTACT INFO'),
                onPressed: () {
                  //action code for button 2
                },
              )),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 205, 202, 202),
      // ignore: prefer_const_constructors
      appBar: AppBar(
          title: Text(
        "PORTFOLIO",
        style: TextStyle(fontFamily: 'Silkscreen', fontSize: 40),
      )),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
                width: 420,
                height: 160,
                // ignore: prefer_const_constructors
                decoration: BoxDecoration(
                  color: Colors.red,
                  gradient: LinearGradient(colors: [
                    Colors.white,
                    Colors.grey,
                    Colors.white,
                    Colors.grey,
                    Colors.white,
                    Colors.grey,
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
                  "assets/Sub.png",
                  alignment: Alignment(-1, -1),
                  height: 100,
                  width: 180,
                )),
            Container(
              width: 200,
              height: 200,
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  TyperAnimatedText('Welcome      viewer!',
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 37,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold)),
                  TyperAnimatedText(
                      "My name is Hammad and I'm a trainee at GDSC.",
                      textStyle: TextStyle(
                          fontFamily: 'AbyssinicaSIL',
                          fontSize: 22,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              alignment: Alignment(52, -4.8),
              margin: const EdgeInsets.fromLTRB(111, 120, 0, 0),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(40, 0, 100, 0),
              alignment: Alignment.center,
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  RotateAnimatedText('EAT',
                      alignment: Alignment(0.5, -4.5),
                      textStyle:
                          TextStyle(fontFamily: 'Silkscreen', fontSize: 70)),
                  RotateAnimatedText('CODE',
                      alignment: Alignment(0.9, -4.6),
                      textStyle:
                          TextStyle(fontFamily: 'Silkscreen', fontSize: 70)),
                  RotateAnimatedText('SLEEP',
                      alignment: Alignment(2, -4.7),
                      textStyle:
                          TextStyle(fontFamily: 'Silkscreen', fontSize: 70)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Aboutme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
