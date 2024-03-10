class ScoreCount{
  final int correctAnswer;
  final int totalQues;

  ScoreCount({required this.correctAnswer, required this.totalQues});
   @override
  String toString() {
    return 'Score: $correctAnswer / $totalQues';
  }
}