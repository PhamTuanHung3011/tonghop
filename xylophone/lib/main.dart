
import 'package:audioplayers/audioplayers.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers_api.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Center(child: Text('XyloPhone')),
        backgroundColor: Colors.lightBlue,
      ),
      body: XylophoneApp(),
    ),
  )
);

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildkey({required Color color, required int soundNumber}) {
    return Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            playSound(soundNumber);
          }, child: Text('button'),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
   return Center(
     child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: <Widget>[
        buildkey(color: Colors.red, soundNumber: 1),
         buildkey(color: Colors.blue, soundNumber: 2),
         buildkey(color: Colors.green, soundNumber: 3),
         buildkey(color: Colors.yellowAccent, soundNumber: 4),
         buildkey(color: Colors.black38, soundNumber: 5),
         buildkey(color: Colors.white, soundNumber: 6),
         buildkey(color: Colors.brown, soundNumber: 7)
       ],
     ),
   );
  }
}