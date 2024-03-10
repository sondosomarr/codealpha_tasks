import 'package:flutter/material.dart';
import 'package:tongue/components/item.dart';
// import 'package:tongue/models/family.dart';
import 'package:tongue/models/numbers.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});
  
  final List<Numbers> numbers = const [
    Numbers(sound: 'sounds/col/red.mp3',image: "assets/images/colors/R ed.jpg", num: "Red"),
    Numbers(sound: 'sounds/col/white.mp3',image: "assets/images/colors/white.jpg", num: "White"),
    Numbers(sound: 'sounds/col/blue.mp3',image: "assets/images/colors/blue.jpg", num: "Blue"),
    Numbers(sound: 'sounds/col/green.mp3',image: "assets/images/colors/green.png", num: "Green"),
    Numbers(sound: 'sounds/col/orange.mp3',image: "assets/images/colors/orange.jpg", num: "Orange"),
    Numbers(sound: 'sounds/col/yellow.mp3',image: "assets/images/colors/yellow.jpg", num: "Yellow"),
    Numbers(sound: 'sounds/col/pink.mp3',image: "assets/images/colors/pink.jpg", num: "Pink"),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Colors",style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context,index){
          
          return Item(
             color: const Color.fromARGB(255, 195, 76, 40),
            number: numbers[index], );
        },
        )
    );
  }
}