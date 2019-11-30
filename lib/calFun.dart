double result;
List<String> num1List = [];
List<String> num2List = [];
List<String> _parameters = [];

String displayInputs;

List<String> allInputs = [];

calculation(String input) {
  // If user press the clear button
  if (input == "C") {
    num1List = [];
    num2List = [];
    _parameters = [];
    allInputs = [];
    displayInputs = null;
    result = null;
    return;
  }
  // if two value are available then the '=' work
  if (num1List.length != 0 && num2List.length != 0 && input == "=") {
    allOperations();
    _parameters = [];
    num1List = ["$result"];
    num2List = [];
    allInputs = ["$result"];
    return;
  } else if (num2List.length == 0 && input == "=")
    return; // if one value input then press '=' then it did nothing

  if (input == "0" ||
      input == "1" ||
      input == "2" ||
      input == "3" ||
      input == "4" ||
      input == "5" ||
      input == "6" ||
      input == "7" ||
      input == "8" ||
      input == "9" ||
      input == ".") {
    if (_parameters.length == 0 && result == null) {
      num1List.add(input);
      // When pressed "=" after that hit any number
    } else if (_parameters.length == 0 && result != null) {
      result = null;
      num1List = [];
      allInputs = [];
      num1List.add(input);
    } else {
      num2List.add(input);
    }
  }
  if (input == "+" || input == "-" || input == "x" || input == "/") {
    if (_parameters.length == 0) {
      // When for the first time we hit any Operator button
      _parameters.add(input);
    } else {
      allOperations();
      // When we press any operator button for the second time
      _parameters.add(input);
    }
  }

  allInputs.add(input);
  displayInputs = allInputs.join();
}

void allOperations() {
  if (_parameters[_parameters.length - 1] == "+") {
    double sum = addition(num1List.join(), num2List.join());
    num1List = ["$sum"];
    num2List = [];
    result = sum;
  } else if (_parameters[_parameters.length - 1] == "-") {
    double subtract = subtraction(num1List.join(), num2List.join());
    num1List = ["$subtract"];
    num2List = [];
    result = subtract;
  } else if (_parameters[_parameters.length - 1] == "x") {
    double multi = multiplication(num1List.join(), num2List.join());
    num1List = ["$multi"];
    num2List = [];
    result = multi;
  } else if (_parameters[_parameters.length - 1] == "/") {
    double divi = division(num1List.join(), num2List.join());
    num1List = ["$divi"];
    num2List = [];
    result = divi;
  }
}

addition(String num1, String num2) {
  double addResult = double.parse(num1) + double.parse(num2);
  return addResult;
}

subtraction(String num1, String num2) {
  double subResult = double.parse(num1) - double.parse(num2);
  return subResult;
}

multiplication(String num1, String num2) {
  double mulResult = double.parse(num1) * double.parse(num2);
  return mulResult;
}

division(String num1, String num2) {
  double diviResult = double.parse(num1) / double.parse(num2);
  return diviResult;
}
