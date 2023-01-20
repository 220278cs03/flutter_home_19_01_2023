import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  int count = 0;
  int currentIndex = 0;
  String name = "";
  int counter = 0;
  List<String> list = [];

  setIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  addCount() {
    count++;
    notifyListeners();
  }

  getName(String name) {
    this.name = name;
    notifyListeners();
  }

  addCounter() {
    counter++;
    notifyListeners();
  }

  setToList(String text) {
    list.add(text);
    notifyListeners();
  }

  removeFromList(int index) {
    list.removeAt(index);
    notifyListeners();
  }
}
