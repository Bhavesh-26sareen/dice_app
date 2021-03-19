import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Dice App",
    home: Diceapp(),
    theme: ThemeData(
      primarySwatch: Colors.deepPurple,
    ),
  ));
}

class Diceapp extends StatefulWidget {
  @override
  _DiceappState createState() => _DiceappState();
}

class _DiceappState extends State<Diceapp> {
  int dicenumber = 1;
  void roll() {
    Random random = new Random();
    setState(() {
      dicenumber = random.nextInt(7);
      if (dicenumber == 0) {
        dicenumber = 6;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        shadowColor: Colors.red,
        backgroundColor: Colors.orange,
        title: Text("Let's Play Dice Friends"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            dicenumber == 1
                ? Image.asset(
                    "assets/images/dice1.PNG",
                    width: 300,
                    height: 300,
                  )
                : Text(""),
            dicenumber == 2
                ? Image.asset(
                    "assets/images/dice2.PNG",
                    width: 300,
                    height: 300,
                  )
                : Text(""),
            dicenumber == 3
                ? Image.asset(
                    "assets/images/dice3.PNG",
                    width: 300,
                    height: 300,
                  )
                : Text(""),
            dicenumber == 4
                ? Image.asset(
                    "assets/images/dice4.PNG",
                    width: 300,
                    height: 300,
                  )
                : Text(""),
            dicenumber == 5
                ? Image.asset(
                    "assets/images/dice5.PNG",
                    width: 300,
                    height: 300,
                  )
                : Text(""),
            dicenumber == 6
                ? Image.asset(
                    "assets/images/dice6.PNG",
                    width: 300,
                    height: 300,
                  )
                : Text(""),
            Text(
              "Your Number is: $dicenumber",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 46,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 24),
              child: RaisedButton(
                color: Colors.amber,
                onPressed: roll,
                child: Text("Roll The Dice",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
