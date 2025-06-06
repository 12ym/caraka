import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_context/one_context.dart';
import 'package:word_jumble/screens/splash_leveling/splash_leveling_1_screen.dart';
import 'package:word_jumble/screens/splash_leveling/splash_leveling_2_screen.dart';
import 'package:word_jumble/screens/splash_leveling/splash_leveling_3_screen.dart';
import 'package:word_jumble/screens/splash_leveling/splash_leveling_4_screen.dart';
import 'package:word_jumble/screens/splash_leveling/splash_leveling_5_screen.dart';
import 'package:word_jumble/services/isar_service.dart';

import '../globals.dart';
import '../models/game_model.dart';
import 'dart:math';

class GameController {
  late GameState state;
  final Random _random = Random();

  static bool splashLeveling1 = false;
  static bool splashLeveling2 = false;
  static bool splashLeveling3 = false;
  static bool splashLeveling4 = false;
  static bool splashLeveling5 = false;

  GameController() {
    // var item = wordlist[_random.nextInt(wordlist.length)];
    // state = GameState(
    //     correctWord: item['word']!.toUpperCase(),
    //     hint: item["hint"]!,
    //     maxBoxLeght: item["word"]!.length,
    //     selectedText: List.filled(item["word"]!.length, -1));
    // _generateRandomLetters(state.correctWord);
    initializeGameState();
  }

  Future<void> initializeGameState() async {
    IsarService isarService = IsarService();
    bool wordExists = true;
    var item;
    List<Map<String, Object>> level1Words =
        wordlist.where((word) => word['level'] == 1).toList();
    List<Map<String, Object>> level2Words =
        wordlist.where((word) => word['level'] == 2).toList();
    List<Map<String, Object>> level3Words =
        wordlist.where((word) => word['level'] == 3).toList();
    List<Map<String, Object>> level4Words =
        wordlist.where((word) => word['level'] == 4).toList();
    List<Map<String, Object>> level5Words =
        wordlist.where((word) => word['level'] == 5).toList();

    while (wordExists) {
      if (level1Words.isNotEmpty) {
        item = level1Words[_random.nextInt(level1Words.length)];
      } else if (level2Words.isNotEmpty) {
        item = level2Words[_random.nextInt(level2Words.length)];
      } else if (level3Words.isNotEmpty) {
        item = level3Words[_random.nextInt(level3Words.length)];
      } else if (level4Words.isNotEmpty) {
        item = level4Words[_random.nextInt(level4Words.length)];
      } else if (level5Words.isNotEmpty) {
        item = level5Words[_random.nextInt(level5Words.length)];
      } else {
        throw Exception("No more words available");
      }

      wordExists = await isarService.wordExists(item['word']!.toUpperCase());

      if (wordExists) {
        if (level1Words.contains(item)) {
          level1Words.remove(item);
          if (level1Words.isEmpty) {
            // GoRouter.of(context).go('/splash_level_1');

            debugPrint(
                "Level 1 berhasil dilewati, lanjut ke level selanjutnya");

            if (!splashLeveling1) {
              splashLeveling1 = true;
              OneContext().push(
                  MaterialPageRoute(builder: (_) => SplashLeveling1Screen()));
            }

            await Future.delayed(Duration(seconds: 2));
          }
        } else if (level2Words.contains(item)) {
          level2Words.remove(item);
          if (level2Words.isEmpty) {
            // GoRouter.of(context).go('/splash_level_1');
            debugPrint(
                "Level 2 berhasil dilewati, lanjut ke level selanjutnya");
            if (!splashLeveling2) {
              splashLeveling2 = true;
              OneContext().push(
                  MaterialPageRoute(builder: (_) => SplashLeveling2Screen()));
            }

            await Future.delayed(Duration(seconds: 2));
          }
        } else if (level3Words.contains(item)) {
          level3Words.remove(item);
          if (level3Words.isEmpty) {
            debugPrint(
                "Level 3 berhasil dilewati, lanjut ke level selanjutnya");
            if (!splashLeveling3) {
              splashLeveling3 = true;
              OneContext().push(
                  MaterialPageRoute(builder: (_) => SplashLeveling3Screen()));
            }
            await Future.delayed(Duration(seconds: 2));
          }
        } else if (level4Words.contains(item)) {
          level4Words.remove(item);
          if (level4Words.isEmpty) {
            debugPrint(
                "Level 4 berhasil dilewati, lanjut ke level selanjutnya");
            if (!splashLeveling4) {
              splashLeveling4 = true;
              OneContext().push(
                  MaterialPageRoute(builder: (_) => SplashLeveling4Screen()));
            }
            await Future.delayed(Duration(seconds: 2));
          }
        } else if (level5Words.contains(item)) {
          level5Words.remove(item);
          if (level5Words.isEmpty) {
            if (!splashLeveling5) {
              splashLeveling5 = true;
              OneContext().push(
                  MaterialPageRoute(builder: (_) => SplashLeveling5Screen()));
            }
            debugPrint(
                "Level 5 berhasil dilewati, lanjut ke level selanjutnya");
            await Future.delayed(Duration(seconds: 2));
          }
        }
      }
    }

    state = GameState(
      correctWord: item['word']!.toUpperCase(),
      hint: item["hint"]!,
      maxBoxLeght: item["word"]!.length,
      selectedText: List.filled(item["word"]!.length, -1),
      wordLevel: item["level"],
      category: item["category"],
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
        // state.lowestIndex = maxFinalLetters;
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
    // String guessedWord =
    //     state.selectedText.map((index) => state.text[index]).toString();
    String guessedWord = "";
    for (int index in state.selectedText) {
      guessedWord += state.text[index];
    }
    print(guessedWord);
    print(state.correctWord);
    print(guessedWord == state.correctWord);
    state.won = guessedWord == state.correctWord;
    if (state.won == true) {
      //TODO: save the score
      print("ok, next level");
    } else {
      //TODO: save the score
      print("salah cuy");
      // GoRouter.of(context).go('/summary', state: state.won);
    }
  }

  /// This is an implementation of Fisher-Yates Algorithm
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
    // Add random letters to the correct word
    for (var i = 0; i < maxSelectableLetters - state.correctWord.length; i++) {
      int randomIndex = _random.nextInt(25) + 1;
      correct += alphabet[randomIndex];
    }
    state.text = _shuffleWord(correct);
  }

  void reRandomizeLetters() {
    _generateRandomLetters(state.correctWord);
  }
}
