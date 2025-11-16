String name = "Nahid";
int age = 25;
double height = 5.8; 
bool isStudent = true;




double calculateBMI(double weightKg, double heightMeters) {
  double bmi = weightKg / (heightMeters * heightMeters);
  return double.parse(bmi.toStringAsFixed(1));
}

void main() {
  double weightKg = 150.0 * 0.453592;
  double heightMeters = 5.8 * 0.3048;

  double bmi = calculateBMI(weightKg, heightMeters);
  String grade = getGrade(91);

  print("Name: $name, Age: $age, Height: $height ft, Is Student: $isStudent");
  print("BMI: $bmi");
  print("Grade: $grade");
}





String getGrade(int score) {
  if (score >= 90 && score <= 100) {
    return 'A';
  } else if (score >= 80) {
    return 'B';
  } else if (score >= 70) {
    return 'C';
  } else if (score >= 60) {
    return 'D';
  } else {
    return 'F';
  }
}

void main1() { 
  double bmi = calculateBMI(150.0, height); 
  String grade = getGrade(85); 

  print("Name: $name, Age: $age, Height: $height ft, Is Student: $isStudent");
  print("BMI: $bmi");
  print("Grade: $grade");
}