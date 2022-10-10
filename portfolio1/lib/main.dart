import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    routes: <String, WidgetBuilder>{
      '/Aboutme': (context) => Aboutme(),
      '/Skills': (context) => Skills(),
      '/Whyme': (context) => Whyme(),
      '/Contact': (context) => Contact()
    },
    theme: ThemeData(primarySwatch: Colors.grey),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
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
                heroTag: 0,
                label: Text('ABOUT ME'),
                onPressed: () {
                  Navigator.pushNamed(
                      context, '/Aboutme'); //action code for button 1
                },
              )), //button first

          Container(
              alignment: Alignment(0.19, 0.2),
              margin: EdgeInsets.fromLTRB(20, 20, 20, 30),
              child: FloatingActionButton.extended(
                heroTag: 7,
                label: Text('SKILLS'),
                onPressed: () {
                  Navigator.pushNamed(context, '/Skills');
                  //action code for button 2
                },
              )), // button second

          Container(
              decoration: BoxDecoration(),
              alignment: Alignment(0.19, 0.4),
              margin: EdgeInsets.fromLTRB(20, 20, 20, 30),
              child: FloatingActionButton.extended(
                heroTag: 4,
                label: Text('WHY ME? '),
                onPressed: () {
                  Navigator.pushNamed(context, '/Whyme');
                  //action code for button 2
                },
              )), // button third
          Container(
              alignment: Alignment(0.19, 0.6),
              margin: EdgeInsets.fromLTRB(20, 20, 20, 30),
              child: FloatingActionButton.extended(
                heroTag: 2,
                label: Text('CONTACT INFO'),
                onPressed: () {
                  Navigator.pushNamed(
                      context, '/Contact'); //action code for button 2
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
                  border: Border.all(),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
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
                      color: Color.fromARGB(73, 15, 17, 71),
                      blurRadius: 200,
                    )
                  ],
                ),
                margin: const EdgeInsets.fromLTRB(5, 5, 5, 0),
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
                  RotateAnimatedText('REPEAT',
                      alignment: Alignment(10, -4.8),
                      textStyle:
                          TextStyle(fontFamily: 'Silkscreen', fontSize: 65)),
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
  const Aboutme({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "ABOUT ME",
        style: TextStyle(fontFamily: 'Silkscreen', fontSize: 40),
      )),
      body: (Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: SizedBox(
                  child: Text(
                    "            WHO AM I?\n"
                    "I was born and raised in Lucknow from where I did my schooling from SFC till High School thereafter I did a two year pinnacle program from FIITJEE and ended up in AKGEC from where I'm pursuing my BTECH in Computer Science and Engineering. ",
                    style: TextStyle(fontFamily: 'Silkscreen', fontSize: 21),
                  ),
                  height: 300,
                  width: 380),
              decoration: new BoxDecoration(boxShadow: [
                new BoxShadow(
                  color: Color.fromARGB(147, 146, 154, 150),
                  blurRadius: 10.0,
                ),
              ]),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: SizedBox(
                  child: Text(
                    "          HOBBIES\n"
                    "My hobbies include football and fitness and apart from that I like collecting coins.⚽️🏋🏻‍♂️🪙",
                    style: TextStyle(fontFamily: 'Silkscreen', fontSize: 21.3),
                  ),
                  height: 180,
                  width: 350),
              decoration: new BoxDecoration(boxShadow: [
                new BoxShadow(
                  color: Color.fromARGB(147, 146, 154, 150),
                  blurRadius: 10.0,
                ),
              ]),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: SizedBox(
                  child: Text(
                    "           STRENGTHS\n"
                    "Family and friends are my biggest strengths.🤝🏻🫂\n"
                    "           WEAKNESSES\n"
                    "My weakness is that I'm addicted to coffee even though it makes me more alive throughout the day.☕️",
                    style: TextStyle(fontFamily: 'Silkscreen', fontSize: 19.5),
                  ),
                  height: 210,
                  width: 350),
              decoration: new BoxDecoration(boxShadow: [
                new BoxShadow(
                  color: Color.fromARGB(147, 146, 154, 150),
                  blurRadius: 13.0,
                ),
              ]),
            )
          ],
        ),
      )),
      backgroundColor: Color.fromARGB(255, 205, 202, 202),
    );
  }
}

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "SKILLS",
        style: TextStyle(fontFamily: 'Silkscreen', fontSize: 40),
      )),
      body: (Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: SizedBox(
                  child: Text(
                    "       TECHNICAL SKILLS💻\n\n"
                    "Programming using C and C++.\n\n"
                    "Application development using Swift,flutter and dart.\n\n"
                    "Web Development using HTML,CSS and JAVASCRIPT.\n\n"
                    "Basics of Machine learning using Xcode.",
                    style: TextStyle(fontFamily: 'Silkscreen', fontSize: 21),
                  ),
                  height: 440,
                  width: 360),
              decoration: new BoxDecoration(boxShadow: [
                new BoxShadow(
                  color: Color.fromARGB(147, 146, 154, 150),
                  blurRadius: 10.0,
                ),
              ]),
            ),
          ],
        ),
      )),
      backgroundColor: Color.fromARGB(255, 205, 202, 202),
    );
  }
}

class Whyme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "WHY ME?",
        style: TextStyle(fontFamily: 'Silkscreen', fontSize: 42),
      )),
      body: (Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: SizedBox(
                  child: Text(
                    "\nOver the years, I have acquired relevant skills and experience, which I shall bring to your organization.\n"
                    "I have also worked tirelessly on my communication abilities and teamwork skills, which I will put to use in my future career, which would be in your organization if I am selected for the position.\n"
                    "I have given my 100% effort in my past companies, and this has enabled me to recognize my capabilities and limitations.\n"
                    "If I channelize them further, they will bring fruitful results to me and also to your esteemed organization.\n",
                    style: TextStyle(fontFamily: 'Silkscreen', fontSize: 21),
                  ),
                  height: 740,
                  width: 370),
              decoration: new BoxDecoration(boxShadow: [
                new BoxShadow(
                  color: Color.fromARGB(147, 146, 154, 150),
                  blurRadius: 15.0,
                ),
              ]),
            ),
          ],
        ),
      )),
      backgroundColor: Color.fromARGB(255, 205, 202, 202),
    );
  }
}

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "CONTACT ME",
        style: TextStyle(fontFamily: 'Silkscreen', fontSize: 40),
      )),
      body: (Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: SizedBox(
                  child: Text(
                    "      \n\n"
                    "Programming using C and C++.\n\n"
                    "Application development using Swift,flutter and dart.\n\n"
                    "Web Development using HTML,CSS and JAVASCRIPT.\n\n"
                    "Basics of Machine learning using Xcode.",
                    style: TextStyle(fontFamily: 'Silkscreen', fontSize: 21),
                  ),
                  height: 440,
                  width: 360),
              decoration: new BoxDecoration(boxShadow: [
                new BoxShadow(
                  color: Color.fromARGB(147, 146, 154, 150),
                  blurRadius: 10.0,
                ),
              ]),
            ),
          ],
        ),
      )),
      backgroundColor: Color.fromARGB(255, 205, 202, 202),
    );
  }
}
