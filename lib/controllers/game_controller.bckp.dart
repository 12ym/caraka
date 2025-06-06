import 'package:go_router/go_router.dart';
import 'package:word_jumble/services/isar_service.dart';
import '../globals.dart';
import '../models/game_model.dart';
import 'dart:math';

class GameController {
  late GameState state;
  final Random _random = Random();

  GameController() {
    _initializeGameState();
  }

  Future<void> _initializeGameState() async {
    IsarService isarService = IsarService();
    bool wordExists = true;
    var item;

    while (wordExists) {
      item = wordlist[_random.nextInt(wordlist.length)];
      wordExists = await isarService.wordExists(item['word']!.toUpperCase());
    }

    state = GameState(
      correctWord: item['word']!.toUpperCase(),
      hint: item["hint"]!,
      maxBoxLeght: item["word"]!.length,
      selectedText: List.filled(item["word"]!.length, -1),
      wordLevel: item["level"],
      icon: item["icon"],
    );
    _generateRandomLetters(state.correctWord);
  }

  String get hint => state.hint;

  int get maxLenght => state.correctWord.length;

  void selectWord(int index) {
    if (state.lowestIndex < state.correctWord.length &&
        !state.selectedText.contains(index)) {
      state.setSelectedText(state.lowestIndex, index);

      state.lowestIndex = state.selectedText.indexOf(-1);
      if (state.lowestIndex == -1) {
        _updateGameState();
        state.lowestIndex = state.correctWord.length;
      }
    }
  }

  void removeWord(int index) {
    if (state.selectedText[index] != -1) {
      if (index < state.lowestIndex) {
        state.lowestIndex = index;
      }
      state.setSelectedText(index, -1);
      state.won = null;
    }
  }

  void _updateGameState() {
    String guessedWord = "";
    for (int index in state.selectedText) {
      guessedWord += state.text[index];
    }
    state.won = guessedWord == state.correctWord;
    if (state.won == true) {
      print("ok, next level");
    } else {
      print("salah cuy");
    }
  }

  String _shuffleWord(String word) {
    for (var i = word.length - 1; i > 0; i--) {
      int j = _random.nextInt(i);
      String temp = word[j];
      word = word.replaceRange(j, j + 1, word[i]);
      word = word.replaceRange(i, i + 1, temp);
    }
    return word;
  }

  void _generateRandomLetters(String correct) {
    for (var i = 0; i < maxSelectableLetters - state.correctWord.length; i++) {
      int randomIndex = _random.nextInt(25) + 1;
      correct += alphabet[randomIndex];
    }
    state.text = _shuffleWord(correct);
  }
}
