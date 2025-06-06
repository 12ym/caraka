import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:one_context/one_context.dart';
import 'package:word_jumble/db/wordlist_db.dart';
import 'package:word_jumble/screens/summary/splash_open_app.dart';
import 'package:word_jumble/services/isar_service.dart';

class ScorePage extends StatefulWidget {
  const ScorePage({super.key});

  @override
  State<ScorePage> createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  late Future<List<Wordlist>> _wordListsFuture;
  int _selectedLevel = 1;

  @override
  void initState() {
    super.initState();
    _wordListsFuture = IsarService().getAllWordListsByLevel(_selectedLevel);
  }

  void _onLevelChanged(int? newLevel) {
    if (newLevel != null) {
      setState(() {
        _selectedLevel = newLevel;
        _wordListsFuture = IsarService().getAllWordListsByLevel(_selectedLevel);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jawabanmu'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // GoRouter.of(context).go('/splash_leveling');
            OneContext().push(MaterialPageRoute(builder: (_) => SplashOpenApp()));
          },
        ),
      ),
      body: Column(
        children: [
          DropdownButton<int>(
            value: _selectedLevel,
            items: [
              DropdownMenuItem(value: 1, child: Text('Level 1')),
              DropdownMenuItem(value: 2, child: Text('Level 2')),
              DropdownMenuItem(value: 3, child: Text('Level 3')),
              DropdownMenuItem(value: 4, child: Text('Level 4')),
              DropdownMenuItem(value: 5, child: Text('Level 5')),
            ],
            onChanged: _onLevelChanged,
          ),
          Expanded(
            child: FutureBuilder<List<Wordlist>>(
              future: _wordListsFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Center(
                      child: Text('Data belum ada, silakan mulai permainan.'));
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      final wordList = snapshot.data![index];
                      return ListTile(
                        title: Text(
                          '${wordList.hint}',
                          style: TextStyle(fontSize: 20),
                        ),
                        subtitle: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Jawaban: ${wordList.correctAnswer}'),
                            Row(
                              children: [
                                Text('Jawabanmu: ${wordList.word}'),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(5, 1, 5, 1),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: wordList.isTrue!
                                          ? Colors.green
                                          : Colors.red,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    wordList.isTrue! ? 'Benar' : 'Salah',
                                    style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 10,
                                      color: wordList.isTrue!
                                          ? Colors.green
                                          : Colors.red,
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
