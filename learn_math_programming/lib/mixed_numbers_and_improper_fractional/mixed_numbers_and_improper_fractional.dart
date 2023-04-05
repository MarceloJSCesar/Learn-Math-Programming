import 'dart:io';

void main() {
  print(
      "Welcome \n we're going to transform a mixed number into improper fractional ");
  late String improperNumber;
  late String mixedNumber;
  late int integrerNum;
  late double numeratorNum;
  late double denomeratorNum;
  print('type the integrer number \n');
  integrerNum = int.parse(stdin.readLineSync() ?? '0');
  print('type the numerador number \n');
  numeratorNum = double.parse(stdin.readLineSync() ?? '0');
  print('type the denomerador number \n');
  denomeratorNum = double.parse(stdin.readLineSync() ?? '0');
  mixedNumber = "'$integrerNum' + '$numeratorNum' / '$denomeratorNum'";
  print("Our mixed numeber is: $mixedNumber");
  improperNumber = transformToImproperFraction(
      integrerNum: integrerNum,
      denomeratorNum: denomeratorNum,
      numeratorNum: numeratorNum);
  print("the improper number or fraction is equal to: $improperNumber");
}

String transformToImproperFraction(
    {int? integrerNum, double? numeratorNum, double? denomeratorNum}) {
  if ((denomeratorNum ?? 0.0) == 0.0) {
    print("cannot calculate because the denominator is: 0");
    return "";
  } else {
    return "${((integrerNum ?? 0) * denomeratorNum!) + (numeratorNum ?? 0.0)} / $denomeratorNum";
  }
}

String transformToMixedNumbers() {
  return "";
}
