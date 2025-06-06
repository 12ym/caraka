import 'package:isar/isar.dart';

part 'wordlist_db.g.dart';

@collection
class Levels {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment
  int? currentLevel;
  int? currentScore;

  @ignore
  List<Wordlist>? wordList;
}

@collection
class Wordlist {
  Id id = Isar.autoIncrement; // you can also use id = null to auto increment
  String? word;
  String? hint;
  String? correctAnswer;
  bool? isDone;
  bool? isTrue;
  int? level;
}
