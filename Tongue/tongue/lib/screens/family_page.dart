import 'package:flutter/material.dart';
import 'package:tongue/components/item.dart';
// import 'package:tongue/models/family.dart';
import 'package:tongue/models/numbers.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});
  
  final List<Numbers> numbers = const [
    Numbers(sound: 'sounds/fam/father.mp3',image: "assets/images/fam/family_father.png", num: "Father"),
    Numbers(sound: 'sounds/fam/mother.mp3',image: "assets/images/fam/family_mother.png", num: "Mother"),
    Numbers(sound: 'sounds/fam/daughter.mp3',image: "assets/images/fam/family_daughter.png", num: "Daughter"),
    Numbers(sound: 'sounds/fam/son.mp3',image: "assets/images/fam/family_son.png", num: "Son"),
    Numbers(sound: 'sounds/fam/GM.mp3',image: "assets/images/fam/family_grandmother.png", num: "Grandmother"),
    Numbers(sound: 'sounds/fam/GF.mp3',image: "assets/images/fam/family_grandfather.png", num: "Grandfather"),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Family Members",style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context,index){
          
          return Item(
            color:const Color(0xff50ADC7),
            number: numbers[index], );
        },
        )
    );
  }
}