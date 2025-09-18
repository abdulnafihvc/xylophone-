import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatefulWidget {

  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(),
                    ),

                    onPressed: () {
                       player.play(AssetSource('note1.wav'));
                    },

                    child: Text(''),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                      shape: RoundedRectangleBorder(),
                    ),

                    onPressed: () {
                      player.play(AssetSource('note2.wav'));
                    },
                    child: Text(''),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(),
                    ),
                    onPressed: () {
                      player.play(AssetSource('note3.wav'));
                    },
                    child: Text(''),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                      shape: RoundedRectangleBorder(),
                    ),
                    onPressed: () {
                      player.play(AssetSource('note4.wav'));
                    },
                    child: Text(''),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(),
                    ),
                    onPressed: () {
                      player.play(AssetSource('note5.wav'));
                    },
                    child: Text(''),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                      shape: RoundedRectangleBorder(),
                    ),
                    onPressed: () {
                      player.play(AssetSource('note6.wav'));
                    },
                    child: Text(''),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(),
                    ),
                    onPressed: () {
                      player.play(AssetSource('note7.wav'));
                    },
                    child: Text(''),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
