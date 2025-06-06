import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_context/one_context.dart';
import 'package:word_jumble/screens/game/game_page.dart';

class SplashLeveling2Screen extends StatefulWidget {
  const SplashLeveling2Screen({super.key});

  @override
  State<SplashLeveling2Screen> createState() => _SplashLeveling2ScreenState();
}

class _SplashLeveling2ScreenState extends State<SplashLeveling2Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(20),
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        // image: const DecorationImage(
        //   image: AssetImage('assets/images/splash_lvl1.jpg'),
        //   fit: BoxFit.cover,
        // ),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Batik Parang',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset('assets/images/splash_lvl2.jpg'),
          SizedBox(
            height: 40,
          ),
          Text(
              'Dikenal sebagai motif batik tertua di Indonesia yang ada sejak zaman Keraton Mataram, motif Parang menjadi salah satu batik yang cukup populer. Parang merupakan motif yang menggambarkan ombak di laut selatan Yogyakarta yang mengenai tebing karang.'),
          SizedBox(
            height: 40,
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
        ],
      ),
    ));
  }
}
