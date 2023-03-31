import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound({required int soundNumber}) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({required Color colorName, required int soundNumber1}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: colorName),
        onPressed: () {
          playSound(soundNumber: soundNumber1);
        },
        child: const Text(
          "Click me to play",
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(colorName: Colors.red, soundNumber1: 1),
              buildKey(colorName: Colors.orange, soundNumber1: 2),
              buildKey(colorName: Colors.yellow, soundNumber1: 3),
              buildKey(colorName: Colors.green, soundNumber1: 4),
              buildKey(colorName: Colors.teal, soundNumber1: 5),
              buildKey(colorName: Colors.blue, soundNumber1: 6),
              buildKey(colorName: Colors.purple, soundNumber1: 7),
            ],
          ),
        ),
      ),
    );
  }
}
