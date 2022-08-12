import 'package:flutter/material.dart';

class HomePageProvider extends ChangeNotifier {
  bool _eligibility = false;

  bool get eligibleAge => _eligibility;

  void eligibilityChecker(int age) {
    _eligibility = age >= 18;

    notifyListeners();
  }
}
