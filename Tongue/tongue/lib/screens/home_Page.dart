import 'package:flutter/material.dart';
import 'package:tongue/components/categories.dart';
import 'package:tongue/screens/colors_page.dart';
import 'package:tongue/screens/family_page.dart';
import 'package:tongue/screens/numbers_Page.dart';
class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tongue",
          style: TextStyle(color: Colors.white,fontSize: 20),) ,
        backgroundColor: Colors.greenAccent,
        ),
        
        body: Column(
          children: [
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                  return const NumbersPage();
                  }));
              },
              text: "Numbers",
              color: Colors.orangeAccent,
            ),
            Category(
                 onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                  return const FamilyMembers();
                  }));
              },
              text: "Family Members",
              color:const Color(0xff50ADC7),
            ),
            Category(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context){
                  return const ColorsPage();
                  }));
              },
              text: "Colors",
              color: const Color.fromARGB(255, 195, 76, 40),
            ),
          ],
        ),
        
    );
  }
}