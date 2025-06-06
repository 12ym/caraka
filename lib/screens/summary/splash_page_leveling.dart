import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_context/one_context.dart';
import 'package:word_jumble/screens/game/game_page.bckp.dart';
import 'package:word_jumble/screens/game/game_page.dart';

class SplashLevelingScreen extends StatefulWidget {
  const SplashLevelingScreen({super.key});

  @override
  State<SplashLevelingScreen> createState() => _SplashLevelingScreenState();
}

class _SplashLevelingScreenState extends State<SplashLevelingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      // GoRouter.of(context).go('/game');
      OneContext().push(MaterialPageRoute(builder: (_) => Game()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage('assets/images/parangtritis.png'),
              fit: BoxFit.cover,
            ),
            color: Colors.black),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [CircularProgressIndicator()],
        ),
      ),
    );
  }
}
