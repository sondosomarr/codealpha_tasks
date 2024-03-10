import 'package:flutter/material.dart';
class Flashcard{
  String ques;
  String ans;
  Flashcard({required this.ques,required this.ans});
}

class FlashcardWidget extends StatelessWidget {
  final Flashcard flashcard;
  const FlashcardWidget({required this.flashcard});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Text(flashcard.ques,
          style: TextStyle(
            fontSize: 18,
          ),),
          SizedBox(height: 15),
           Text(flashcard.ans,
          style: TextStyle(
            fontSize: 18,
          ),),

        ],
      ),
    );
  }
}