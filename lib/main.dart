import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

void playSound(int SoundNumber) {
  final player = AudioPlayer();
  player.play(AssetSource('note$SoundNumber.wav'));
}

Expanded BuildWidget(backgroundcolor, SoundNumber) {
  return Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: backgroundcolor,
        shape: RoundedRectangleBorder(),
      ),

      onPressed: () {
        playSound(SoundNumber);
      },
      child: Text(''),
    ),
  );
}

class XylophoneApp extends StatefulWidget {
  const XylophoneApp({super.key});

  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BuildWidget(const Color(0xFF03071e), 1),
                BuildWidget(const Color(0xFF370617), 2),
                BuildWidget(const Color(0xFF6a040f), 3),
                BuildWidget(const Color(0xFF9d0208), 4),
                BuildWidget(const Color(0xFFd00000), 5),
                BuildWidget(const Color(0xFFdc2f02), 6),
                BuildWidget(const Color(0xFFe85d04), 7),





                


                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
