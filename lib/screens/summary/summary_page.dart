import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:one_context/one_context.dart';
import 'package:word_jumble/globals.dart';
import 'package:word_jumble/screens/game/game_page.dart';

class SummaryPage extends StatelessWidget {
  final bool won;
  late final Gradient backgroundGradient;

  SummaryPage({super.key, required this.won}) {
    backgroundGradient = won ? winBackgroundGradient : lossBackgroundGradient;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: BoxDecoration(
          gradient: backgroundGradient,
        ),
        child: SizedBox.expand(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  textAlign: TextAlign.center,
                  won
                      ? 'Betul! Silakan lanjut ke soal selanjutnya'
                      : 'Yah, jawaban salah',
                  style:  TextStyle(
                    fontFamily: GoogleFonts.robotoSlab().fontFamily,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {
                  // context.pushReplacement("/game");
                  OneContext().pushReplacement(MaterialPageRoute(
                    builder: (_) => Game(),
                  ));
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  foregroundColor:
                      MaterialStateProperty.all(backgroundGradient.colors[1]),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                child: const Text(
                  "Lanjut",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
