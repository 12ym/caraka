import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_context/one_context.dart';
import 'package:word_jumble/screens/game/game_page.dart';

class SplashLeveling1Screen extends StatefulWidget {
  const SplashLeveling1Screen({super.key});

  @override
  State<SplashLeveling1Screen> createState() => _SplashLeveling1ScreenState();
}

class _SplashLeveling1ScreenState extends State<SplashLeveling1Screen> {
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
            'Batik Kawung',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset('assets/images/splash_lvl1.jpg'),
          SizedBox(
            height: 40,
          ),
          Text(
              'Dikenal sebagai salah satu motif batik terpopuler di Jawa Tengah dan Yogyakarta, motif Kawung identik dengan bentuknya yang bulat-bulat menyerupai buah kawung, atau buah aren yang disusun geometris. Dalam kebudayaan Jawa, motif Kawung yang disusun secara geometris diartikan sebagai lambang kehidupan manusia.'),
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
