// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text("Expressive Counter"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
                child: Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    child: Text("Tap \"-\" to decrement",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white)))),
            ProgressBar(),
            Center(
                child: Container(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Text("Tap \"+\" to increment",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white)))),
          ],
        ),
      ),
    ));
  }
}

class ProgressBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProgressState();
  }
}

class _ProgressState extends State<ProgressBar> {
  int _count = 50;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 192, 178, 178),
                borderRadius: BorderRadius.circular(10)),
            child: Row(children: <Widget>[
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    _count += 1;
                  });
                },
              ),
              Text(_count.toString()),
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: () {
                  setState(() {
                    _count -= 1;
                  });
                },
              ),
            ])),
      ],
    );
  }
}
