import 'package:flutter/material.dart';

const String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
// const int maxFinalLetters = 5;
const int maxSelectableLetters = 10;

class GameState extends ChangeNotifier {


  List<int> selectedText;
  String text = "";
  int lowestIndex = 0;
  late String correctWord;
  late String hint;
  String? icon;
  bool? _won;

  int? wordLevel;

  int? maxBoxLeght;

  String? category;
  GameState({required this.correctWord, required this.hint, required int? maxBoxLeght, required this.selectedText, required this.wordLevel, this.category, this.icon}) {
    this.maxBoxLeght = maxBoxLeght;
    selectedText = List.filled(maxBoxLeght!, -1);
    text = correctWord.split('').toList().join();
  }

  bool? get won => _won;
  set won(bool? value) {
    if (won != value) {
      _won = value;
      notifyListeners();
    }
  }

  void setSelectedText(int index, int value) {
    selectedText[index] = value;
    notifyListeners();
  }
}
