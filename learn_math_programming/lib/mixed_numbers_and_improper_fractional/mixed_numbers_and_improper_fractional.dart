import 'dart:io';

void main() {
  print(
      "=== Welcome to MathProgramming === \n We're going to transform a mixed number into improper fraction and vice-versa");
  bool canRun = true;
  while (canRun) {
    List<String> options = [
      "\n 0 -> turn mixed number into improper fraction \n",
      "1 -> turn improper fraction into mixed number \n",
      "2 -> exit the program",
    ];
    late int optionNum;
    print(
        "please choose of the following options by typing the number \n ${options.cast().toString().replaceAll('[', '').replaceAll(']', '').replaceAll(',', '')}");
    optionNum = int.tryParse((stdin.readLineSync() ?? '3')) ?? 3;
    switch (optionNum) {
      case 0:
        print("\n == ${options[optionNum]} == \n ");
        transformToImproperFraction();
        break;
      case 1:
        print("\n == ${options[optionNum]} == \n ");
        transformToMixedNumbers();
        break;
      case 2:
        print("\n == ${options[optionNum]} == \n ");
        canRun = false;
        break;
      default:
        print(
            "\n == the following value typed do not matched to any options == \n ");
        break;
    }
  }
}

void transformToImproperFraction() {
  late String improperFraction;
  late String mixedNumber;
  late double wholeNumber;
  late double numeratorNum;
  late double denomeratorNum;

  // input
  print('** type the integrer number \n');
  wholeNumber = double.tryParse(stdin.readLineSync() ?? '0.0') ?? 0.0;
  print('** type the numerador number \n');
  numeratorNum = double.tryParse(stdin.readLineSync() ?? '0.0') ?? 0.0;
  print('** type the denomerador number \n');
  denomeratorNum = double.tryParse(stdin.readLineSync() ?? '1.0') ?? 1.0;
  mixedNumber = "'$wholeNumber' + '$numeratorNum' / '$denomeratorNum'";
  print("== Our mixed numeber is: $mixedNumber == \n ");

  // output
  if (denomeratorNum <= 0.0) {
    improperFraction =
        "cannot calculate because the denominator is equal to: $denomeratorNum";
  } else {
    improperFraction =
        "the improper fraction is equal to: ${(wholeNumber * denomeratorNum) + numeratorNum} / $denomeratorNum";
  }

  print("\n == $improperFraction == \n");
}

void transformToMixedNumbers() {
  // general
  late String mixedNumber;

  // for mixed number
  late int wholeNumber;
  late double newNumeratorNum;

  // for improper fraction
  late double numeratorNum;
  late double denomeratorNum;

  // input
  print('** type the numerador number \n');
  numeratorNum = double.tryParse(stdin.readLineSync() ?? '0.0') ?? 0.0;
  print('** type the denomerador number \n');
  denomeratorNum = double.tryParse(stdin.readLineSync() ?? '1.0') ?? 1.0;

  // output
  if (denomeratorNum <= 0.0) {
    mixedNumber =
        "cannot calculate because the denominator is equal to: $denomeratorNum";
  } else {
    newNumeratorNum = (numeratorNum % denomeratorNum);
    wholeNumber = numeratorNum ~/
        denomeratorNum; // using truncation divison to convert the result to an integrer
    mixedNumber =
        "the mixed number is equal to: $wholeNumber * $newNumeratorNum / $denomeratorNum}";
  }

  print("\n == $mixedNumber == \n");
}
