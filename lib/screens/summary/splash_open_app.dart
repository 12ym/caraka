import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_context/one_context.dart';
import 'package:word_jumble/routes.dart';
import 'package:word_jumble/screens/summary/splash_page.dart';

class SplashOpenApp extends StatefulWidget {
  const SplashOpenApp({super.key});

  @override
  State<SplashOpenApp> createState() => _SplashOpenAppState();
}

class _SplashOpenAppState extends State<SplashOpenApp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 100), () {
      // GoRouter.of(context).go('/splash_leveling');
      OneContext().pushNamed(Routes.splashLeveling);

      // OneContext().push(MaterialPageRoute(builder: (_) => SplashScreen()));
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
              image: const AssetImage('assets/images/background.jpg'),
              fit: BoxFit.fitWidth,
            ),
            color: Colors.white),
      ),
    );
  }
}
