// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:word_jumble/screens/game/game_page.dart';
// import 'package:word_jumble/screens/splash_leveling/splash_leveling_1_screen.dart';
// import 'package:word_jumble/screens/splash_leveling/splash_leveling_2_screen.dart';
// import 'package:word_jumble/screens/summary/score_page.dart';
// import 'package:word_jumble/screens/summary/splash_open_app.dart';
// import 'package:word_jumble/screens/summary/splash_page.dart';
// import 'package:word_jumble/screens/summary/splash_page_leveling.dart';
// import 'package:word_jumble/screens/summary/summary_page.dart';
//
// GoRouter router = GoRouter(
//   initialLocation: "/splash_leveling-open-app",
//   routes: [
//     GoRoute(
//       path: "/game",
//       pageBuilder: (context, state) => _buildTransitionPage(const Game()),
//       routes: [
//         GoRoute(
//           path: "summary",
//           pageBuilder: (context, state) {
//             final bool won = state.extra as bool;
//             // final bool won = true;
//             return _buildTransitionPage(
//               SummaryPage(
//                 won: won,
//               ),
//             );
//           },
//         ),
//       ],
//     ),
//     GoRoute(
//       path: "/splash_leveling-open-app",
//       pageBuilder: (context, state) =>
//           _buildTransitionPage(const SplashOpenApp()),
//       routes: [],
//     ),
//     GoRoute(
//       path: "/splash_leveling",
//       pageBuilder: (context, state) =>
//           _buildTransitionPage(const SplashScreen()),
//       routes: [],
//     ),
//     GoRoute(
//       path: "/splash_leveling-leveling",
//       pageBuilder: (context, state) =>
//           _buildTransitionPage(const SplashLevelingScreen()),
//       routes: [],
//     ),
//     GoRoute(
//       path: "/splash_level_1",
//       pageBuilder: (context, state) =>
//           _buildTransitionPage(const SplashLeveling1Screen()),
//       routes: [],
//     ),
//     GoRoute(
//       path: "/splash_level_2",
//       pageBuilder: (context, state) =>
//           _buildTransitionPage(const SplashLeveling2Screen()),
//       routes: [],
//     ),
//     GoRoute(
//       path: "/score",
//       pageBuilder: (context, state) => _buildTransitionPage(const ScorePage()),
//       routes: [],
//     ),
//   ],
// );
//
// Page<void> _buildTransitionPage(Widget child) {
//   return CustomTransitionPage(
//     child: child,
//     transitionsBuilder: (context, animation, secondaryAnimation, child) =>
//         FadeTransition(
//       opacity: animation,
//       child: child,
//     ),
//   );
// }


import 'package:flutter/material.dart';
import 'package:one_context/one_context.dart';
import 'package:word_jumble/screens/game/game_page.dart';
import 'package:word_jumble/screens/splash_leveling/splash_leveling_1_screen.dart';
import 'package:word_jumble/screens/splash_leveling/splash_leveling_2_screen.dart';
import 'package:word_jumble/screens/splash_leveling/splash_leveling_3_screen.dart';
import 'package:word_jumble/screens/splash_leveling/splash_leveling_4_screen.dart';
import 'package:word_jumble/screens/splash_leveling/splash_leveling_5_screen.dart';
import 'package:word_jumble/screens/summary/score_page.dart';
import 'package:word_jumble/screens/summary/splash_open_app.dart';
import 'package:word_jumble/screens/summary/splash_page.dart';
import 'package:word_jumble/screens/summary/splash_page_leveling.dart';
import 'package:word_jumble/screens/summary/summary_page.dart';

class Routes {
  static const String splashOpenApp = "/splash_leveling-open-app";
  static const String splashLeveling = "/splash_leveling";
  static const String splashLeveling1 = "/splash_level_1";
  static const String splashLeveling2 = "/splash_level_2";
  static const String splashLeveling3 = "/splash_level_3";
  static const String splashLeveling4 = "/splash_level_4";
  static const String splashLeveling5 = "/splash_level_5";
  static const String score = "/score";
  static const String game = "/game";
  static const String summary = "/game/summary";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashOpenApp:
        return MaterialPageRoute(builder: (_) => const SplashOpenApp());
      case splashLeveling:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case splashLeveling1:
        return MaterialPageRoute(builder: (_) => const SplashLeveling1Screen());
      case splashLeveling2:
        return MaterialPageRoute(builder: (_) => const SplashLeveling2Screen());
      case splashLeveling3:
        return MaterialPageRoute(builder: (_) => const SplashLeveling3Screen());
      case splashLeveling4:
        return MaterialPageRoute(builder: (_) => const SplashLeveling4Screen());
      case splashLeveling5:
        return MaterialPageRoute(builder: (_) => const SplashLeveling5Screen());
      case score:
        return MaterialPageRoute(builder: (_) => const ScorePage());
      case game:
        return MaterialPageRoute(builder: (_) => const Game());
      case summary:
        final bool won = settings.arguments as bool;
        return MaterialPageRoute(
          builder: (_) => SummaryPage(won: won),
        );
      default:
        return MaterialPageRoute(builder: (_) => const SplashOpenApp());
    }
  }
}