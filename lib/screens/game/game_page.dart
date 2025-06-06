import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:one_context/one_context.dart';
import 'package:provider/provider.dart';
import 'package:word_jumble/globals.dart';
import 'package:word_jumble/screens/summary/score_page.dart';
import 'package:word_jumble/services/isar_service.dart';
import 'package:word_jumble/screens/game/selectable_letter.dart';
import 'package:word_jumble/screens/game/selected_letter.dart';
import 'package:audioplayers/audioplayers.dart';
import '../../controllers/game_controller.dart';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  late Future<void> _initIsarFuture;
  GameController? controller;

  int currentLevel = 1;

  @override
  void initState() {
    // Resume the global audio player if not already playing
    if (globalAudioPlayer.state != PlayerState.playing) {
      print('Resuming global audio player');
      globalAudioPlayer.resume();
    }

    _initIsarFuture = IsarService().initIsar().then((_) async {
      currentLevel = await IsarService().getCurrentLevel();
      controller = GameController();
      await controller!.initializeGameState();
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initIsarFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularProgressIndicator(),
                SizedBox(
                  height: 20,
                ),
                Text('Loading game...'),
                TextButton(
                    onPressed: () {
                      // GoRouter.of(context).go('/score');
                      OneContext()
                          .push(MaterialPageRoute(builder: (_) => ScorePage()));
                    },
                    child: Text('Cek skor'))
              ],
            )),
          );
        } else if (snapshot.hasError) {
          return Scaffold(
            body: Center(
                child: Text('Error initializing database, ${snapshot.error}')),
          );
        } else {
          if (controller == null) {
            return Scaffold(
              body: Center(child: Text('Error initializing game')),
            );
          }
          return ChangeNotifierProvider(
            create: (context) {
              return controller!.state;
            },
            child: Scaffold(
              body: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        currentLevel == 1
                            ? 'assets/images/merapi_2.png'
                            : currentLevel == 2
                                ? 'assets/images/lvl2_bg.jpg'
                                : currentLevel == 3
                                    ? 'assets/images/lvl3_bg.jpg'
                                    : currentLevel == 4
                                        ? 'assets/images/lvl4_bg.jpg'
                                        : 'assets/images/lvl5_bg.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                    color: Colors.black),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (globalAudioPlayer.state ==
                                    PlayerState.playing) {
                                  globalAudioPlayer.pause();
                                } else {
                                  globalAudioPlayer.resume();
                                }
                              });
                            },
                            icon: Icon(
                              globalAudioPlayer.state == PlayerState.playing
                                  ? Icons.volume_off
                                  : Icons.volume_up,
                              size: 30,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text('Level $currentLevel',
                            style: TextStyle(
                                fontFamily: GoogleFonts.robotoSlab().fontFamily,
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        const Spacer(),
                        CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: () {
                              OneContext().push(MaterialPageRoute(
                                  builder: (_) => ScorePage()));
                            },
                            icon: Icon(
                              Icons.sports_score_sharp,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (controller!.state.icon != null)
                      Container(
                        child: FutureBuilder(
                          future: _checkImageExists(
                              'assets/images/${controller!.state.icon}'),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.done) {
                              if (snapshot.hasData && snapshot.data == true) {
                                return Image.asset(
                                  'assets/images/${controller!.state.icon}',
                                  width: 100,
                                  height: 100,
                                );
                              } else {
                                return Text('');
                              }
                            } else {
                              return CircularProgressIndicator();
                            }
                          },
                        ),
                      ),
                    Text('${controller!.hint}',
                        style: TextStyle(
                            fontFamily: GoogleFonts.robotoSlab().fontFamily,
                            fontSize: 32,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Kategori: ${controller!.state.category}',
                            style: TextStyle(
                                fontFamily: GoogleFonts.robotoSlab().fontFamily,
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.normal)),
                        Text('',
                            style: TextStyle(
                                fontFamily: GoogleFonts.robotoSlab().fontFamily,
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SelectedLetter(gameController: controller!),
                    SizedBox(
                      width: 400,
                      child: Wrap(
                        alignment: WrapAlignment.spaceEvenly,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: List.generate(
                          currentLevel == 1 ? 10 : 15,
                          (index) => SelectableLetter(
                            index: index,
                            onTap: () {
                              controller!.selectWord(index);
                              print('Selected $index');
                            },
                          ),
                        ),
                      ),
                    ),
                    Container(
                        margin:
                            const EdgeInsets.only(top: 20, left: 20, right: 20),
                        width: double.infinity,
                        child: Row(
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                print('skip skip');

                                setState(() {
                                  controller!.reRandomizeLetters();
                                });
                              },
                              child: Text('Acak'),
                            ),
                            Spacer(),
                            ElevatedButton(
                              onPressed: () {
                                print('skip skip');

                                setState(() {
                                  _initIsarFuture =
                                      IsarService().initIsar().then((_) async {
                                    currentLevel =
                                        await IsarService().getCurrentLevel();
                                    controller = GameController();
                                    await controller!.initializeGameState();
                                  });
                                });
                              },
                              child: Text('Lewati'),
                            ),
                          ],
                        )),

                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }

  Future<bool> _checkImageExists(String assetPath) async {
    try {
      final assetImage = AssetImage(assetPath);
      final config = ImageConfiguration();
      final completer = Completer<bool>();
      final stream = assetImage.resolve(config);
      final listener = ImageStreamListener((_, __) {
        completer.complete(true);
      }, onError: (dynamic exception, StackTrace? stackTrace) {
        completer.complete(false);
      });
      stream.addListener(listener);
      return completer.future;
    } catch (e) {
      return false;
    }
  }
}
