// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wordlist_db.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLevelsCollection on Isar {
  IsarCollection<Levels> get levels => this.collection();
}

const LevelsSchema = CollectionSchema(
  name: r'Levels',
  id: 3622154275328290718,
  properties: {
    r'currentLevel': PropertySchema(
      id: 0,
      name: r'currentLevel',
      type: IsarType.long,
    ),
    r'currentScore': PropertySchema(
      id: 1,
      name: r'currentScore',
      type: IsarType.long,
    )
  },
  estimateSize: _levelsEstimateSize,
  serialize: _levelsSerialize,
  deserialize: _levelsDeserialize,
  deserializeProp: _levelsDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _levelsGetId,
  getLinks: _levelsGetLinks,
  attach: _levelsAttach,
  version: '3.1.0+1',
);

int _levelsEstimateSize(
  Levels object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _levelsSerialize(
  Levels object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.currentLevel);
  writer.writeLong(offsets[1], object.currentScore);
}

Levels _levelsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Levels();
  object.currentLevel = reader.readLongOrNull(offsets[0]);
  object.currentScore = reader.readLongOrNull(offsets[1]);
  object.id = id;
  return object;
}

P _levelsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _levelsGetId(Levels object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _levelsGetLinks(Levels object) {
  return [];
}

void _levelsAttach(IsarCollection<dynamic> col, Id id, Levels object) {
  object.id = id;
}

extension LevelsQueryWhereSort on QueryBuilder<Levels, Levels, QWhere> {
  QueryBuilder<Levels, Levels, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LevelsQueryWhere on QueryBuilder<Levels, Levels, QWhereClause> {
  QueryBuilder<Levels, Levels, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Levels, Levels, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Levels, Levels, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Levels, Levels, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Levels, Levels, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LevelsQueryFilter on QueryBuilder<Levels, Levels, QFilterCondition> {
  QueryBuilder<Levels, Levels, QAfterFilterCondition> currentLevelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currentLevel',
      ));
    });
  }

  QueryBuilder<Levels, Levels, QAfterFilterCondition> currentLevelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currentLevel',
      ));
    });
  }

  QueryBuilder<Levels, Levels, QAfterFilterCondition> currentLevelEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<Levels, Levels, QAfterFilterCondition> currentLevelGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currentLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<Levels, Levels, QAfterFilterCondition> currentLevelLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currentLevel',
        value: value,
      ));
    });
  }

  QueryBuilder<Levels, Levels, QAfterFilterCondition> currentLevelBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currentLevel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Levels, Levels, QAfterFilterCondition> currentScoreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'currentScore',
      ));
    });
  }

  QueryBuilder<Levels, Levels, QAfterFilterCondition> currentScoreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'currentScore',
      ));
    });
  }

  QueryBuilder<Levels, Levels, QAfterFilterCondition> currentScoreEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'currentScore',
        value: value,
      ));
    });
  }

  QueryBuilder<Levels, Levels, QAfterFilterCondition> currentScoreGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'currentScore',
        value: value,
      ));
    });
  }

  QueryBuilder<Levels, Levels, QAfterFilterCondition> currentScoreLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'currentScore',
        value: value,
      ));
    });
  }

  QueryBuilder<Levels, Levels, QAfterFilterCondition> currentScoreBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'currentScore',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Levels, Levels, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Levels, Levels, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Levels, Levels, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Levels, Levels, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LevelsQueryObject on QueryBuilder<Levels, Levels, QFilterCondition> {}

extension LevelsQueryLinks on QueryBuilder<Levels, Levels, QFilterCondition> {}

extension LevelsQuerySortBy on QueryBuilder<Levels, Levels, QSortBy> {
  QueryBuilder<Levels, Levels, QAfterSortBy> sortByCurrentLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentLevel', Sort.asc);
    });
  }

  QueryBuilder<Levels, Levels, QAfterSortBy> sortByCurrentLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentLevel', Sort.desc);
    });
  }

  QueryBuilder<Levels, Levels, QAfterSortBy> sortByCurrentScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentScore', Sort.asc);
    });
  }

  QueryBuilder<Levels, Levels, QAfterSortBy> sortByCurrentScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentScore', Sort.desc);
    });
  }
}

extension LevelsQuerySortThenBy on QueryBuilder<Levels, Levels, QSortThenBy> {
  QueryBuilder<Levels, Levels, QAfterSortBy> thenByCurrentLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentLevel', Sort.asc);
    });
  }

  QueryBuilder<Levels, Levels, QAfterSortBy> thenByCurrentLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentLevel', Sort.desc);
    });
  }

  QueryBuilder<Levels, Levels, QAfterSortBy> thenByCurrentScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentScore', Sort.asc);
    });
  }

  QueryBuilder<Levels, Levels, QAfterSortBy> thenByCurrentScoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'currentScore', Sort.desc);
    });
  }

  QueryBuilder<Levels, Levels, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Levels, Levels, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension LevelsQueryWhereDistinct on QueryBuilder<Levels, Levels, QDistinct> {
  QueryBuilder<Levels, Levels, QDistinct> distinctByCurrentLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currentLevel');
    });
  }

  QueryBuilder<Levels, Levels, QDistinct> distinctByCurrentScore() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'currentScore');
    });
  }
}

extension LevelsQueryProperty on QueryBuilder<Levels, Levels, QQueryProperty> {
  QueryBuilder<Levels, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Levels, int?, QQueryOperations> currentLevelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currentLevel');
    });
  }

  QueryBuilder<Levels, int?, QQueryOperations> currentScoreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'currentScore');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetWordlistCollection on Isar {
  IsarCollection<Wordlist> get wordlists => this.collection();
}

const WordlistSchema = CollectionSchema(
  name: r'Wordlist',
  id: 8763245998287914903,
  properties: {
    r'correctAnswer': PropertySchema(
      id: 0,
      name: r'correctAnswer',
      type: IsarType.string,
    ),
    r'hint': PropertySchema(
      id: 1,
      name: r'hint',
      type: IsarType.string,
    ),
    r'isDone': PropertySchema(
      id: 2,
      name: r'isDone',
      type: IsarType.bool,
    ),
    r'isTrue': PropertySchema(
      id: 3,
      name: r'isTrue',
      type: IsarType.bool,
    ),
    r'level': PropertySchema(
      id: 4,
      name: r'level',
      type: IsarType.long,
    ),
    r'word': PropertySchema(
      id: 5,
      name: r'word',
      type: IsarType.string,
    )
  },
  estimateSize: _wordlistEstimateSize,
  serialize: _wordlistSerialize,
  deserialize: _wordlistDeserialize,
  deserializeProp: _wordlistDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _wordlistGetId,
  getLinks: _wordlistGetLinks,
  attach: _wordlistAttach,
  version: '3.1.0+1',
);

int _wordlistEstimateSize(
  Wordlist object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.correctAnswer;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.hint;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.word;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _wordlistSerialize(
  Wordlist object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.correctAnswer);
  writer.writeString(offsets[1], object.hint);
  writer.writeBool(offsets[2], object.isDone);
  writer.writeBool(offsets[3], object.isTrue);
  writer.writeLong(offsets[4], object.level);
  writer.writeString(offsets[5], object.word);
}

Wordlist _wordlistDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Wordlist();
  object.correctAnswer = reader.readStringOrNull(offsets[0]);
  object.hint = reader.readStringOrNull(offsets[1]);
  object.id = id;
  object.isDone = reader.readBoolOrNull(offsets[2]);
  object.isTrue = reader.readBoolOrNull(offsets[3]);
  object.level = reader.readLongOrNull(offsets[4]);
  object.word = reader.readStringOrNull(offsets[5]);
  return object;
}

P _wordlistDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset)) as P;
    case 3:
      return (reader.readBoolOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _wordlistGetId(Wordlist object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _wordlistGetLinks(Wordlist object) {
  return [];
}

void _wordlistAttach(IsarCollection<dynamic> col, Id id, Wordlist object) {
  object.id = id;
}

extension WordlistQueryWhereSort on QueryBuilder<Wordlist, Wordlist, QWhere> {
  QueryBuilder<Wordlist, Wordlist, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension WordlistQueryWhere on QueryBuilder<Wordlist, Wordlist, QWhereClause> {
  QueryBuilder<Wordlist, Wordlist, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension WordlistQueryFilter
    on QueryBuilder<Wordlist, Wordlist, QFilterCondition> {
  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition>
      correctAnswerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'correctAnswer',
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition>
      correctAnswerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'correctAnswer',
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> correctAnswerEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correctAnswer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition>
      correctAnswerGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'correctAnswer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> correctAnswerLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'correctAnswer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> correctAnswerBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'correctAnswer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition>
      correctAnswerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'correctAnswer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> correctAnswerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'correctAnswer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> correctAnswerContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'correctAnswer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> correctAnswerMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'correctAnswer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition>
      correctAnswerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correctAnswer',
        value: '',
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition>
      correctAnswerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'correctAnswer',
        value: '',
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> hintIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'hint',
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> hintIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'hint',
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> hintEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hint',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> hintGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hint',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> hintLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hint',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> hintBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hint',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> hintStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'hint',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> hintEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'hint',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> hintContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'hint',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> hintMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'hint',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> hintIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hint',
        value: '',
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> hintIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'hint',
        value: '',
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> isDoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isDone',
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> isDoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isDone',
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> isDoneEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDone',
        value: value,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> isTrueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isTrue',
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> isTrueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isTrue',
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> isTrueEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isTrue',
        value: value,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> levelIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'level',
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> levelIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'level',
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> levelEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'level',
        value: value,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> levelGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'level',
        value: value,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> levelLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'level',
        value: value,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> levelBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'level',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> wordIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'word',
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> wordIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'word',
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> wordEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> wordGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> wordLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> wordBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'word',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> wordStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> wordEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> wordContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'word',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> wordMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'word',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> wordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'word',
        value: '',
      ));
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterFilterCondition> wordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'word',
        value: '',
      ));
    });
  }
}

extension WordlistQueryObject
    on QueryBuilder<Wordlist, Wordlist, QFilterCondition> {}

extension WordlistQueryLinks
    on QueryBuilder<Wordlist, Wordlist, QFilterCondition> {}

extension WordlistQuerySortBy on QueryBuilder<Wordlist, Wordlist, QSortBy> {
  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> sortByCorrectAnswer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctAnswer', Sort.asc);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> sortByCorrectAnswerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctAnswer', Sort.desc);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> sortByHint() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hint', Sort.asc);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> sortByHintDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hint', Sort.desc);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> sortByIsDone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDone', Sort.asc);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> sortByIsDoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDone', Sort.desc);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> sortByIsTrue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTrue', Sort.asc);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> sortByIsTrueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTrue', Sort.desc);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> sortByLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.asc);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> sortByLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.desc);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> sortByWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.asc);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> sortByWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.desc);
    });
  }
}

extension WordlistQuerySortThenBy
    on QueryBuilder<Wordlist, Wordlist, QSortThenBy> {
  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> thenByCorrectAnswer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctAnswer', Sort.asc);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> thenByCorrectAnswerDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'correctAnswer', Sort.desc);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> thenByHint() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hint', Sort.asc);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> thenByHintDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'hint', Sort.desc);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> thenByIsDone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDone', Sort.asc);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> thenByIsDoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDone', Sort.desc);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> thenByIsTrue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTrue', Sort.asc);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> thenByIsTrueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isTrue', Sort.desc);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> thenByLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.asc);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> thenByLevelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'level', Sort.desc);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> thenByWord() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.asc);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QAfterSortBy> thenByWordDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'word', Sort.desc);
    });
  }
}

extension WordlistQueryWhereDistinct
    on QueryBuilder<Wordlist, Wordlist, QDistinct> {
  QueryBuilder<Wordlist, Wordlist, QDistinct> distinctByCorrectAnswer(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'correctAnswer',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QDistinct> distinctByHint(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'hint', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Wordlist, Wordlist, QDistinct> distinctByIsDone() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDone');
    });
  }

  QueryBuilder<Wordlist, Wordlist, QDistinct> distinctByIsTrue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isTrue');
    });
  }

  QueryBuilder<Wordlist, Wordlist, QDistinct> distinctByLevel() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'level');
    });
  }

  QueryBuilder<Wordlist, Wordlist, QDistinct> distinctByWord(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'word', caseSensitive: caseSensitive);
    });
  }
}

extension WordlistQueryProperty
    on QueryBuilder<Wordlist, Wordlist, QQueryProperty> {
  QueryBuilder<Wordlist, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Wordlist, String?, QQueryOperations> correctAnswerProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'correctAnswer');
    });
  }

  QueryBuilder<Wordlist, String?, QQueryOperations> hintProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'hint');
    });
  }

  QueryBuilder<Wordlist, bool?, QQueryOperations> isDoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDone');
    });
  }

  QueryBuilder<Wordlist, bool?, QQueryOperations> isTrueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isTrue');
    });
  }

  QueryBuilder<Wordlist, int?, QQueryOperations> levelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'level');
    });
  }

  QueryBuilder<Wordlist, String?, QQueryOperations> wordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'word');
    });
  }
}
