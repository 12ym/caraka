import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_context/one_context.dart';
import 'package:word_jumble/screens/game/game_page.dart';

class SplashLeveling3Screen extends StatefulWidget {
  const SplashLeveling3Screen({super.key});

  @override
  State<SplashLeveling3Screen> createState() => _SplashLeveling3ScreenState();
}

class _SplashLeveling3ScreenState extends State<SplashLeveling3Screen> {
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
            'Batik Sidomukti',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Image.asset('assets/images/splash_lvl3.jpg'),
          SizedBox(
            height: 40,
          ),
          Text(
              'Nama “Sidomukti” diambil dari dua kata Bahasa Jawa, yaitu “Sido” yang berarti jadi atau menjadi, serta “Mukti” yang diartikan dengan kebahagiaan atau kecukupan. Jika digabungkan, batik motif Sidomukti diartikan sebagai harapan agar penggunanya mendapatkan kebaahagiaan dan kebaikan.'),
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
