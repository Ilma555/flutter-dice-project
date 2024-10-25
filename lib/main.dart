import 'package:flutter/material.dart';
import 'dart:math'; //this appears as grey if it's not in use

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigoAccent,
        appBar: AppBar(
          title: const Text('Dice, thats the app'),
          backgroundColor: Colors.purple,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  int left = 1;
  int right = 1;
  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      ChangeValue();
                    });
                    print('Left image is clicked');
                    print(left);
                  },
                  child:Image.asset('images/dice$left.png')),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(onPressed: () {
                setState(() {
                  ChangeValue();
                });
                print('Right image is clicked');
                print(right);
              },
                  child: Image.asset('images/dice$right.png')),
            ),
          ),

        ],
      ),

    );
  }

  void ChangeValue(){
    left = 1 + Random().nextInt(6);
    right = 1 + Random().nextInt(6);
  }
}


