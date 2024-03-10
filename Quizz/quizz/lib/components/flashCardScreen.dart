import 'package:flutter/material.dart';
import 'package:quizz/components/Flashcard.dart';
import 'package:quizz/components/Score.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FlashCardScreen extends StatefulWidget {
  const FlashCardScreen({super.key});

  @override
  State<FlashCardScreen> createState() => _FlashCardScreenState();
}

class _FlashCardScreenState extends State<FlashCardScreen> {
List<Flashcard> flashcards = [];
int currentCard=0;
int correctAnswer=0;
 late SharedPreferences prefs;
 final _formKey = GlobalKey<FormState>();
  TextEditingController questionController = TextEditingController();
  TextEditingController answerController = TextEditingController();
  @override
  void initState() {
    super.initState();
    loadFlashcards();
      initPrefs();

  }
  void initPrefs() async {
    prefs = await SharedPreferences.getInstance();
  }
  void loadFlashcards(){
    setState(() {
      flashcards=[
        Flashcard(
          ques: '2*2?',
          ans:'4'
          ),
          Flashcard(
          ques: 'what is the capital of egypt?',
          ans:'Cairo'
          ),
          Flashcard(
          ques: 'which animal is known as ship of desert?',
          ans:'the camel'
          ),
          Flashcard(
          ques: 'Rainbow consists of how many colors?',
          ans:'7 colors'
          ),
      ];
    });
  }
   void showNextCard() {
    setState(() {
      currentCard = (currentCard + 1) % flashcards.length;
    });
  }
  void checkAnswer(bool isCorrect) {
    if (isCorrect) {
      setState(() {
        correctAnswer++;
      });
    }
    showNextCard();
  }
  void resetQuiz() {
    setState(() {
      currentCard = 0;
      correctAnswer = 0;
    });
  }
  void saveScore(){
  final Score=ScoreCount(correctAnswer: correctAnswer, totalQues: flashcards.length);
  final scores = prefs.getStringList('quiz_scores') ?? [];
    scores.add(Score.toString());
    prefs.setStringList('quiz_scores', scores);
  }
  
  void addFlashcard() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        final newFlashcard = Flashcard(
          ques: questionController.text,
          ans: answerController.text,
        );
        flashcards.add(newFlashcard);
        questionController.clear();
        answerController.clear();
      });
    }
  }


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quizz App'),
      ),
      body: Column(
        children: [
          FlashcardWidget(flashcard:flashcards[currentCard]),
          ElevatedButton(
            onPressed: () => checkAnswer(true),
            child: Text('Correct'),
          ),
          Text('Score: $correctAnswer / ${flashcards.length}'),
          ElevatedButton(
            onPressed: resetQuiz,
            child: Text('Reset Quiz'),
          ),
           ElevatedButton(
            onPressed: saveScore,
            child: Text('Save Score'),),
             Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: questionController,
                  decoration: InputDecoration(
                    labelText: 'Question',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter a question';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: answerController,
                  decoration: InputDecoration(
                    labelText: 'Answer',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter an answer';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: addFlashcard,
                  child: Text('Add Flashcard'),
                ),],
              
             ),),
              Expanded(
            child: ListView.builder(
              itemCount: flashcards.length,
              itemBuilder: (context, index) {
                return FlashcardWidget(flashcard: flashcards[index]);
              },
            ),) ]
      
      ),
    );
  }
}