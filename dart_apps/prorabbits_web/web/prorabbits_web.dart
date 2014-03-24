import 'dart:html';
import 'dart:math';

void main() {
  querySelector("#submit").onClick.listen((e) => calcRabbits() );
}

calcRabbits() {
  // binding variables to html elements:
  InputElement yearsInput = querySelector("#years");
  LabelElement output = querySelector("#output");
  
  // Get the input
  String yearsString = yearsInput.value;
  int years = int.parse(yearsString);
  
  // calculating and setting output:
  output.innerHtml = "${calculateRabbits(years)}";
}

int calculateRabbits(int years) => (2 * pow(E, log(15) * years)).round().toInt();
