import 'package:flutter/material.dart';

class KrithiPageController with ChangeNotifier {
  int currentIndex = 0;

  void incrementIndex() {
    if (currentIndex < 6) {
      currentIndex++;
      notifyListeners();
    }
  }

  void decrementIndex() {
    if (currentIndex > 0) {
      currentIndex--;
      notifyListeners();
    }
  }
}
