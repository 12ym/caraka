import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:word_jumble/db/wordlist_db.dart';
import 'package:word_jumble/globals.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Isar _isar;

  @override
  initState() {
    // Open Isar instance
    // _isar = Isar.open(
    //   schemas: [WordlistSchema],
    //   directory: Isar.sqliteInMemory,
    //   engine: IsarEngine.sqlite,
    // );
    initIsar();

    super.initState();
  }

  Future<void> initIsar() async {
    final dir = await getApplicationDocumentsDirectory();

    _isar =
        await Isar.open([WordlistSchema, LevelsSchema], directory: dir.path);
  }

  @override
  Widget build(BuildContext context) {
    final levels = _isar.collection<Levels>();

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/lvl1_bg.png'),
              fit: BoxFit.cover,
            ),
            color: Colors.black),
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
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text('Selamat belajar, sugeng sinau!',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: GoogleFonts.robotoSlab().fontFamily,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            Text('${_isar.levels.where().count()} level terlewati',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: GoogleFonts.robotoSlab().fontFamily,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            TextButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)))),
                onPressed: () {
                  GoRouter.of(context).go('/splash_leveling-leveling');
                  // Navigator.pushReplacementNamed(context, '/game');
                },
                child: Text('Lanjut',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ))),
            SizedBox(
              height: 50,
            ),
            TextButton(
                onPressed: () async {
                  final output = await _isar.levels.where().findAll();

                  debugPrint(output.toString());
                },
                child: Text('Test',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ))),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Gunung Merapi, Sleman',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
