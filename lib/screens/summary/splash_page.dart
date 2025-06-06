import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isar/isar.dart';
import 'package:one_context/one_context.dart';
import 'package:word_jumble/db/wordlist_db.dart';
import 'package:word_jumble/screens/game/game_page.bckp.dart';
import 'package:word_jumble/screens/game/game_page.dart';
import 'package:word_jumble/screens/summary/score_page.dart';
import 'package:word_jumble/services/isar_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Future<void> _initIsarFuture;

  @override
  void initState() {
    super.initState();
    _initIsarFuture = IsarService().initIsar();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initIsarFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        } else if (snapshot.hasError) {
          return Scaffold(
            body: Center(child: Text('Error initializing database')),
          );
        } else {
          final levels = IsarService().isar.collection<Levels>();
          return Scaffold(
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/lvl1_bg.jpg'),
                  fit: BoxFit.cover,
                ),
                color: Colors.black,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  Text(
                    'PRADYA\nCARAKA',
                    style: TextStyle(
                      fontFamily: 'BatmanForeverAlternate',
                      fontSize: 50,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Selamat belajar, sugeng sinau!',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: GoogleFonts.robotoSlab().fontFamily,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('Tekan tombol lanjut untuk memulai',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: GoogleFonts.robotoSlab().fontFamily,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    onPressed: () {
                      // GoRouter.of(context).go('/splash_leveling-leveling');
                      OneContext().push(MaterialPageRoute(builder: (_) => Game()));

                    },
                    child: Text(
                      'Lanjut',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    onPressed: () {
                      // GoRouter.of(context).go('/score');
                      OneContext().push(MaterialPageRoute(builder: (_) => ScorePage()));

                    },
                    child: Text(
                      'Cek skor',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Gunung Merapi, Sleman',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
