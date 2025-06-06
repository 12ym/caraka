//
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:word_jumble/services/isar_service.dart';
// import 'package:word_jumble/screens/game/selectable_letter.dart';
// import 'package:word_jumble/screens/game/selected_letter.dart';
// import 'package:audioplayers/audioplayers.dart';
// import '../../controllers/game_controller.dart';
//
// class Game extends StatefulWidget {
//   const Game({super.key});
//
//   @override
//   State<Game> createState() => _GameState();
// }
//
// class _GameState extends State<Game> {
//   late Future<void> _initIsarFuture;
//   late GameController controller;
//   late AudioPlayer player = AudioPlayer();
//
//   @override
//   void initState() {
//     // controller = GameController();
//     // _initIsarFuture = IsarService().initIsar();
//     _initIsarFuture = IsarService().initIsar().then((_) {
//       controller = GameController();
//     });
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     player.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: _initIsarFuture,
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return Scaffold(
//             body: Center(child: CircularProgressIndicator()),
//           );
//         } else if (snapshot.hasError) {
//           return Scaffold(
//             body: Center(
//                 child: Text('Error initializing database, ${snapshot.error}')),
//           );
//         } else {
//           if (controller == null || controller.state == null || controller.state.correctWord == null) {
//             return Scaffold(
//               body: Center(child: Text('Loading...')),
//             );
//           }
//           return ChangeNotifierProvider(
//             create: (context) {
//               return controller.state;
//             },
//             child: Scaffold(
//               body: Container(
//                 padding: const EdgeInsets.all(20),
//                 decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: const AssetImage('assets/images/merapi_2.png'),
//                       fit: BoxFit.cover,
//                     ),
//                     color: Colors.black),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     SizedBox(
//                       height: 200,
//                     ),
//                     Text('Level 1',
//                         style: TextStyle(
//                             fontFamily: GoogleFonts.robotoSlab().fontFamily,
//                             fontSize: 18,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold)),
//                     Text('Makanan & Minuman',
//                         style: TextStyle(
//                             fontFamily: GoogleFonts.robotoSlab().fontFamily,
//                             fontSize: 32,
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold)),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text('Petunjuk:',
//                             style: TextStyle(
//                                 fontFamily: GoogleFonts.robotoSlab().fontFamily,
//                                 fontSize: 14,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.normal)),
//                         Text('${controller.hint}',
//                             style: TextStyle(
//                                 fontFamily: GoogleFonts.robotoSlab().fontFamily,
//                                 fontSize: 18,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold)),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     SelectedLetter(gameController: controller),
//                     SizedBox(
//                       width: 400,
//                       child: Wrap(
//                         alignment: WrapAlignment.spaceEvenly,
//                         crossAxisAlignment: WrapCrossAlignment.center,
//                         children: List.generate(
//                           10,
//                           (index) => SelectableLetter(
//                             index: index,
//                             onTap: () {
//                               controller.selectWord(index);
//                             },
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 100,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         }
//       },
//     );
//   }
// }
