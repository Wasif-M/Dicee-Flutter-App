import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Luckydice",style: TextStyle(fontFamily: 'Playball',fontSize: 40.0),),
          elevation: 100.0,
          backgroundColor: Colors.red,
        ),
        body: DiceApp(),
      )
    )
  );
}


class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDiceNumber = 1;
  int rightDiceNumber=6;
  void changeDiceState() {
    setState(() {
      leftDiceNumber=Random().nextInt(6)+1;
      rightDiceNumber=Random().nextInt(6)+1;
    });
}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(child: TextButton(
            onPressed: () {
              changeDiceState();

            },
            child: Image.asset('images/dice$leftDiceNumber.png'),
          )),
          Expanded(child: TextButton(
            onPressed: () {
              changeDiceState();
            },
            child: Image.asset('images/dice$rightDiceNumber.png'),
          )),
        ],
      ),
    );
  }
}

