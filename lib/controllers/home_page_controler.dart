import 'package:flutter/material.dart';

class HomePageProvider extends ChangeNotifier {
  bool? eligibility;
  String eligibilityMessage = "";

  void eligibilityChecker(int age) {
    if (age >= 18) {
      eligibility = true;
      eligibilityMessage = "Your are eligibility";
      notifyListeners();
    } else {
      eligibility = false;
      eligibilityMessage = "Your are not eligibility";
      notifyListeners();
    }
  }
}
