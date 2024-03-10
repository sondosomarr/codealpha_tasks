import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tongue/models/numbers.dart';

class Item extends StatelessWidget {
  const Item({super.key,required this.number,required this.color});
  final Numbers number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return  Container(
              // color:Colors.orangeAccent,
              color: color,
              height: 100,
              child: Row(
                children: [
                  Container(
                    color: const Color(0xffF5F5DC),
                    child: Image.asset(number.image),),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        
                        Text(number.num,style: const TextStyle(fontSize: 20,color: Colors.white),),
                      ],
                    ),
                  ),
                  const Spacer(
                      flex: 1,
                  ),
                  IconButton(onPressed: (){
                       final player = AudioPlayer();
                      player.play(AssetSource(number.sound));
                  }, 
                  icon:
                  const Icon(
                    Icons.play_arrow,
                    size: 30,
                    ),)
               
                ],
              ),
            );
  }
}