import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isar/isar.dart';
import 'package:one_context/one_context.dart';
import 'package:word_jumble/globals.dart';
import 'package:word_jumble/routes.dart';
import 'package:isar/isar.dart';

void main() async {
  await Isar.initializeIsarCore();

  WidgetsFlutterBinding.ensureInitialized();

  // Initialize the global audio player
  await globalAudioPlayer.setReleaseMode(ReleaseMode.loop);
  await globalAudioPlayer.setSource(AssetSource('sound/leloledung.mp3'));
  await globalAudioPlayer.resume();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.robotoSlab().fontFamily,
      ),
      builder: OneContext().builder,
      navigatorKey: OneContext().key,
      onGenerateRoute: Routes.generateRoute,
      initialRoute: Routes.splashOpenApp,
      debugShowCheckedModeBanner: false,
    );
  }
}
