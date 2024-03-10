import 'package:flutter/material.dart';
import 'package:tongue/components/item.dart';
import 'package:tongue/models/numbers.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({super.key});
  //final Numbers one= Numbers(image: "assets/images/numbers/zero.png", num: "One");
  final List<Numbers> numbers = const [
    Numbers(sound: 'sounds/num/en_num_0.mp3',image: "assets/images/numbers/zero (2).png", num: "Zero"),
    Numbers(sound: 'sounds/num/en_num_01.mp3',image: "assets/images/numbers/one (2).png", num: "One"),
    Numbers(sound: 'sounds/num/en_num_02.mp3',image: "assets/images/numbers/two.png", num: "Two"),
    Numbers(sound: 'sounds/num/en_num_03.mp3',image: "assets/images/numbers/three.png", num: "Three"),
    Numbers(sound: 'sounds/num/en_num_04.mp3',image: "assets/images/numbers/four.png", num: "Four"),
    Numbers(sound: 'sounds/num/en_num_05.mp3',image: "assets/images/numbers/five.png", num: "Five"),
    Numbers(sound: 'sounds/num/en_num_06.mp3',image: "assets/images/numbers/six.png", num: "Six"),
    Numbers(sound: 'sounds/num/en_num_07.mp3',image: "assets/images/numbers/seven.png", num: "Seven"),
    Numbers(sound: 'sounds/num/en_num_08.mp3',image: "assets/images/numbers/eight.png", num: "eight"),
    Numbers(sound: 'sounds/num/en_num_09.mp3',image: "assets/images/numbers/nine.png", num: "Nine"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Numbers",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context,index){
          return Item(
            color:Colors.orangeAccent,
            number: numbers[index], );
        },
        )
    );
  }
}
