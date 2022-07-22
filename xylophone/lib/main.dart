import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber)
  {
    Audio.load('assets/note$soundNumber.wav')..play()..dispose();
  }

  Expanded buildkey(int soundNumber , Color color)
  {

    return Expanded(
      child: TextButton(
        onPressed: (){
          playSound(soundNumber);
        },
        child: Container(
          color: color,
        ),
      ),
    );


  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(1, Colors.red),
              buildkey(2, Colors.orange),
              buildkey(3, Colors.yellow),
              buildkey(4, Colors.green),
              buildkey(5, Colors.teal),
              buildkey(6, Colors.blue),
              buildkey(7, Colors.purple),
            ],
          )
        ),
      ),
    );
  }
}
