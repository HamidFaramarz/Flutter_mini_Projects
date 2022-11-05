import 'package:flutter/material.dart';
import 'dart:io';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Inkwell in flutter",
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String inkwell = '';
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inkwell widget"),
        backgroundColor: Colors.green,
        actions: [
          Text(
            '',
            textScaleFactor: 2,
          )
        ],
      ),
      backgroundColor: Colors.lightBlue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                setState(() {
                  inkwell = "inkwell tapped";
                  print("on tapped");
                });
              },
              onLongPress: () {
                setState(() {
                  inkwell = 'inkwell long pressed!';
                  print("long pressed");
                });
              },
              onDoubleTap: () {
                setState(() {
                  print("Double tapped");
                });
              },
              child: Container(
                width: 200,
                height: 100,
                color: Colors.amber,
                child: Text("Inkweell"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

