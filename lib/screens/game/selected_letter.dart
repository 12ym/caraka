import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:one_context/one_context.dart';
import 'package:provider/provider.dart';
import 'package:word_jumble/controllers/game_controller.dart';
import 'package:word_jumble/db/wordlist_db.dart';
import 'package:word_jumble/globals.dart';
import 'package:word_jumble/models/game_model.dart';
import 'package:word_jumble/screens/summary/summary_page.dart';
import 'package:word_jumble/services/isar_service.dart';

class SelectedLetter extends StatefulWidget {
  final GameController gameController;

  const SelectedLetter({required this.gameController, super.key});

  @override
  State<SelectedLetter> createState() => _SelectedLetterState();
}

class _SelectedLetterState extends State<SelectedLetter>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late final List<Animation<double>> _tweens;

  List<Animation<double>> _getTweens(int tweenNumber) {
    return List.generate(
      widget.gameController.maxLenght,
      (index) {
        // double interval = 1 / tweenNumber;
        double interval = 0.2;
        double begin = interval * index;
        return Tween(
          begin: 0.0,
          end: 90 / 360,
        ).animate(
          CurvedAnimation(
            parent: _controller,
            curve: Interval(
              begin,
              begin + interval,
              curve: gameAnimationCurve,
            ),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1250))
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          setState(() {});
        }
      });

    _tweens = _getTweens(5);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool _isActive(int index, List<int> selectedList) {
    return selectedList[index] != -1;
  }

  String _getText(int index) {
    int textIndex = widget.gameController.state.selectedText[index];
    return widget.gameController.state.text[textIndex];
  }

  bool _getWon() {
    return widget.gameController.state.won ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<GameState>(
      builder: (context, state, _) {
        return Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text('${widget.gameController.maxLenght} Letters',
            //     style: const TextStyle(
            //         fontSize: 18,
            //         color: Colors.white,
            //         fontWeight: FontWeight.bold)),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: List.generate(
            //     widget.gameController.maxLenght,
            //     (index) => Padding(
            //       padding: const EdgeInsets.all(8.0),
            //       child: Container(
            //         width: 50,
            //         height: 50,
            //         decoration: curvedBox.copyWith(
            //           color: backgroundBoxColor,
            //         ),
            //         child: Center(
            //           child: Text(
            //             state.correctWord[index],
            //             style: const TextStyle(
            //               fontSize: 20,
            //               color: Colors.black,
            //               fontFamily: "Roboto",
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),

            Flexible(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5, // Set the number of columns
                  mainAxisSpacing: 5.0,
                  crossAxisSpacing: 5.0,
                ),
                itemCount: state.correctWord.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(5),
                    child: _buildButton(_isActive(index, state.selectedText),
                        index, state.correctWord.length),
                  );
                },
              ),
            )

            // Flexible(
            //     child: Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //
            //     for (int i = 0; i < state.correctWord.length; i++)
            //       _buildButton(_isActive(i, state.selectedText), i,
            //           state.correctWord.length),
            //   ],
            // ))
            //
          ],
        ));
      },
    );
  }

  Future<void> _insertWordsToDb(String answer, String correctWord,
      String hintWord, bool isCorrect, int level) async {
    final isar = IsarService().isar;
    await isar.writeTxn(() async {
      await isar.wordlists.put(Wordlist()
        ..word = answer
        ..hint = hintWord
        ..correctAnswer = correctWord
        ..isTrue = isCorrect
        ..isDone = true
        ..level = level);

      await isar.levels.put(Levels()
        ..currentLevel = level
        ..currentScore = level);
    }).then((value) => debugPrint('done insert to db'));
  }

  Widget _buildButton(bool active, int index, int Lenght) {
    if (index == 2 || Lenght > 5 && index == 4 || Lenght > 7 && index == 6) {
      return Container(
        // color: Colors.blueGrey,
        width: 50,
        height: 50,
        // decoration: BoxDecoration(color: Colors.red.withOpacity(.3)),
        // decoration: curvedBox.copyWith(
        //     // color: Colors.red.withOpacity(.2),
        //     ),
        child: AnimatedScale(
          duration: gameAnimationDuration,
          curve: gameAnimationCurve,
          scale: 1,
          child: RotationTransition(
            turns: _tweens[index],
            child: Letter(
              text: widget.gameController.state.correctWord[index],
            ),
          ),
        ),
      );
    }
    return GestureDetector(
      onTap: () {
        if (!_controller.isAnimating) {
          widget.gameController.removeWord(index);
        }
        if (_controller.isCompleted) {
          _controller.reset();
        }
      },
      child: Container(
        // color: Colors.blueGrey,
        width: 50,
        height: 50,
        decoration: curvedBox.copyWith(
          color: index == 2 ? Colors.red.withOpacity(.3) : backgroundBoxColor,
        ),
        child: AnimatedScale(
          duration: gameAnimationDuration,
          curve: gameAnimationCurve,
          scale: active ? 1 : 0,
          onEnd: () async {
            if (index == Lenght - 1 && active) {
              _controller.forward();
              setState(() {});
              await _insertWordsToDb(
                widget.gameController.state.selectedText
                    .map((index) => widget.gameController.state.text[index])
                    .join(),
                widget.gameController.state.correctWord,
                widget.gameController.hint,
                widget.gameController.state.won ?? false,
                widget.gameController.state.wordLevel ?? 1,
              );
            }
          },
          child: RotationTransition(
            turns: _tweens[index],
            child: Letter(
              index: index,
              started: _controller.isAnimating,
              text: active ? _getText(index) : "",
              done: _controller.isCompleted,
              won: _getWon(),
            ),
          ),
        ),
      ),
    );
  }
}

class Letter extends StatelessWidget {
  final bool started, done, won;
  final int index;
  final String text;

  const Letter({
    this.started = false,
    this.done = false,
    required this.text,
    this.won = false,
    this.index = 0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double begin = index * 0.2;
    double end = begin + 0.2;

    return AnimatedContainer(
      duration: gameAnimationDuration,
      decoration: curvedBox.copyWith(
        color: index == 2
            ? Colors.red.withOpacity(.2)
            : done
                ? Colors.white
                : const Color.fromRGBO(255, 255, 254, 1),
        boxShadow: [gameBoxShadow],
      ),
      onEnd: () {
        if (done) {
          OneContext().pushReplacement(MaterialPageRoute(
            builder: (_) => SummaryPage(won: won),
          ));
          // context.pushReplacement("/game/summary", extra: won);
        }
      },
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 1250),
        curve: Interval(begin, end),
        onEnd: () {},
        opacity: started || done ? 0 : 1,
        child: Center(
          child: Text(
            text,
            style:  TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Color.fromRGBO(116, 88, 207, 1),
              fontFamily: GoogleFonts.robotoSlab().fontFamily,
            ),
          ),
        ),
      ),
    );
  }
}
