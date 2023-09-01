import 'package:flutter/material.dart';

class SignUpViewModel extends ChangeNotifier {
  final validation = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  bool visibility = true;
  bool checkBoxValue = false;
  bool isTermChecked = false;

  void toggleVisibility() {
    visibility = !visibility;
    notifyListeners();
  }

  void termChecked(newValue) {
    isTermChecked = newValue;
    notifyListeners();
  }

void toggleCheckBoxValue(newValue) {
    checkBoxValue = newValue;
    notifyListeners();
}

  String validatePasswords(String? password) {
    if (password!.isEmpty) {
      return "Please enter a password";
    } else if (password.length < 8) {
      return "Your password must be at least 8 characters";
    } else if (!containLettersAndNumbers(password)) {
      return "Password must contain letters and numbers";
    } else {
      return "Password accepted successfully";
    }
  }

  bool containLettersAndNumbers(String password) {
    final letters = RegExp(r'[a-zA-Z]');
    final numbers = RegExp(r'[0-9]');
    return letters.hasMatch(password) &&
        numbers.hasMatch(password) &&
        password.length >= 8;
  }
}
