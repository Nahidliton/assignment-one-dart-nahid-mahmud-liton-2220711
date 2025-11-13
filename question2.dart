import 'dart:math';

void runProgram() {
  List<String> studentNames = ["Alice", "Bob", "Charlie", "Diana", "Eve"];




  Map<String, int> studentScores = {
    "Alice": 85,
    "Bob": 92,
    "Charlie": 76,
    "Diana": 68,
    "Eve": 80
  };

  String highestStudent = studentNames.first;
  String lowestStudent = studentNames.first;
  int highestScore = studentScores[highestStudent]!;
  int lowestScore = studentScores[lowestStudent]!;
  int totalScore = 0;

  for (var entry in studentScores.entries) {
    totalScore += entry.value;
    if (entry.value > highestScore) {
      highestScore = entry.value;
      highestStudent = entry.key;
    }
    if (entry.value < lowestScore) {
      lowestScore = entry.value;
      lowestStudent = entry.key;
    }
  }

  double averageScore = totalScore / studentNames.length;



  print("Student Scores: $studentScores");
  print("Highest Score: $highestStudent with $highestScore");
  print("Lowest Score: $lowestStudent with $lowestScore");
  print("Average Score: ${averageScore.toStringAsFixed(2)}");




  for (String student in studentNames) {
    int score = studentScores[student]!;
    String category;
    switch (score ~/ 10) {
      case 10:
      case 9:
        category = "Excellent";
        break;
      case 8:
        category = "Good";
        break;
      case 7:
        category = "Average";
        break;
      default:
        category = "Needs Improvement";
    }
    print("$student: $score ($category)");
  }
}

void main() {
  runProgram();
}