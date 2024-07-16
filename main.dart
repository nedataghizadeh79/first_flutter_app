import 'package:flutter/material.dart';import 'dart:math';void main() {  runApp(    MaterialApp(      home: Scaffold(        backgroundColor: Colors.cyan[800],        appBar: AppBar(          backgroundColor: Colors.cyan.shade900,          title: Text("Dice"),        ),        body: DiceApp(),      ),    ),  );}class DiceApp extends StatefulWidget {  const DiceApp({super.key});  @override  State<DiceApp> createState() => _DiceAppState();}class _DiceAppState extends State<DiceApp> {  int leftDiceNum = 1;  int rightDiceNum = 1;  void changeDiceNumber(){    //you have to call setState in this block because out of it we face to error    setState(() {      leftDiceNum = Random().nextInt(6) + 1 ;      rightDiceNum = Random().nextInt(6) + 1 ;      // because Random().nextInt(n) method shows numbers between 0 to n-1    });  }  @override  Widget build(BuildContext context) {    return Center(      child: Row(        mainAxisAlignment: MainAxisAlignment.center,        children: [          Expanded(            child: TextButton(              onPressed: (){                print("the left button got pressed");                changeDiceNumber();              },              child: Image.asset("images/dice$leftDiceNum.png"),            ),          ),          SizedBox(width: 16), // Adds a space of 16 pixels between the images          Expanded(            child: TextButton(              onPressed: (){                  changeDiceNumber();              },              child: Image.asset("images/dice$rightDiceNum.png"),            ),          ),        ],      ),    );  }}