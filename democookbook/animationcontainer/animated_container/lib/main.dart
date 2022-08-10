import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(AnimatedContainerApp());

class AnimatedContainerApp extends StatefulWidget {
  AnimatedContainerApp({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerApp> createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
  double _width = 50;
  double _height = 50;
  Color _colour = Colors.blueGrey;
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('AnimatedContainer'),
        ),
        body: Center(
          child: AnimatedContainer(
            duration: Duration(seconds: 5),
            width: _width,
            height: _height,
            decoration: BoxDecoration(
              color: _colour,
              borderRadius: _borderRadiusGeometry,
            ),
            curve: Curves.fastLinearToSlowEaseIn,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.adb_rounded),
          tooltip: 'Click Me!',
          onPressed: () {
            setState(() {
              final random = Random();
              _width = random.nextInt(400).toDouble();
              _height = random.nextInt(400).toDouble();

              _colour = Color.fromRGBO(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                1,
              );

              _borderRadiusGeometry =
                  BorderRadius.circular(random.nextInt(100).toDouble());
            });
          },
        ),
      ),
    );
  }
}
