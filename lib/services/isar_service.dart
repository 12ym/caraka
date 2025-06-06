import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:word_jumble/db/wordlist_db.dart';

class IsarService {
  static final IsarService _instance = IsarService._internal();
  late Isar _isar;

  factory IsarService() {
    return _instance;
  }

  IsarService._internal();

  Future<void> initIsar() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();
      _isar =
          await Isar.open([WordlistSchema, LevelsSchema], directory: dir.path);
    } else {
      _isar = Isar.getInstance()!;
    }
  }

  Isar get isar => _isar;

  Future<bool> wordExists(String correctWord) async {
    final count = await _isar.wordlists
        .filter()
        .correctAnswerContains(correctWord)
        .count();
    return count > 0;
  }

  Future<List<Wordlist>> getAllWordListsByLevel(int level) async {
    return await _isar.wordlists.filter().levelEqualTo(level).findAll();
  }

  Future<int> getCurrentLevel() async {
    final wordList = await _isar.wordlists.where().sortByLevelDesc().findFirst();
    return wordList?.level ?? 1;
  }
}
