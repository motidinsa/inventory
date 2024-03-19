// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_category_database_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLogCategoryDatabaseModelCollection on Isar {
  IsarCollection<LogCategoryDatabaseModel> get logCategoryDatabaseModels =>
      this.collection();
}

const LogCategoryDatabaseModelSchema = CollectionSchema(
  name: r'LogCategoryDatabaseModel',
  id: 8938234845724194005,
  properties: {
    r'addedFrom': PropertySchema(
      id: 0,
      name: r'addedFrom',
      type: IsarType.string,
    ),
    r'categoryId': PropertySchema(
      id: 1,
      name: r'categoryId',
      type: IsarType.string,
    ),
    r'categoryName': PropertySchema(
      id: 2,
      name: r'categoryName',
      type: IsarType.string,
    ),
    r'createdByUserId': PropertySchema(
      id: 3,
      name: r'createdByUserId',
      type: IsarType.string,
    ),
    r'dateCreated': PropertySchema(
      id: 4,
      name: r'dateCreated',
      type: IsarType.dateTime,
    ),
    r'dateModified': PropertySchema(
      id: 5,
      name: r'dateModified',
      type: IsarType.dateTime,
    ),
    r'isAppWriteSynced': PropertySchema(
      id: 6,
      name: r'isAppWriteSynced',
      type: IsarType.bool,
    ),
    r'modifiedByUserId': PropertySchema(
      id: 7,
      name: r'modifiedByUserId',
      type: IsarType.string,
    )
  },
  estimateSize: _logCategoryDatabaseModelEstimateSize,
  serialize: _logCategoryDatabaseModelSerialize,
  deserialize: _logCategoryDatabaseModelDeserialize,
  deserializeProp: _logCategoryDatabaseModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _logCategoryDatabaseModelGetId,
  getLinks: _logCategoryDatabaseModelGetLinks,
  attach: _logCategoryDatabaseModelAttach,
  version: '3.1.0+1',
);

int _logCategoryDatabaseModelEstimateSize(
  LogCategoryDatabaseModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.addedFrom.length * 3;
  bytesCount += 3 + object.categoryId.length * 3;
  bytesCount += 3 + object.categoryName.length * 3;
  bytesCount += 3 + object.createdByUserId.length * 3;
  bytesCount += 3 + object.modifiedByUserId.length * 3;
  return bytesCount;
}

void _logCategoryDatabaseModelSerialize(
  LogCategoryDatabaseModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.addedFrom);
  writer.writeString(offsets[1], object.categoryId);
  writer.writeString(offsets[2], object.categoryName);
  writer.writeString(offsets[3], object.createdByUserId);
  writer.writeDateTime(offsets[4], object.dateCreated);
  writer.writeDateTime(offsets[5], object.dateModified);
  writer.writeBool(offsets[6], object.isAppWriteSynced);
  writer.writeString(offsets[7], object.modifiedByUserId);
}

LogCategoryDatabaseModel _logCategoryDatabaseModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LogCategoryDatabaseModel(
    addedFrom: reader.readString(offsets[0]),
    categoryId: reader.readString(offsets[1]),
    categoryName: reader.readString(offsets[2]),
    createdByUserId: reader.readString(offsets[3]),
    dateCreated: reader.readDateTime(offsets[4]),
    dateModified: reader.readDateTime(offsets[5]),
    isAppWriteSynced: reader.readBoolOrNull(offsets[6]),
    modifiedByUserId: reader.readString(offsets[7]),
  );
  object.id = id;
  return object;
}

P _logCategoryDatabaseModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readDateTime(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _logCategoryDatabaseModelGetId(LogCategoryDatabaseModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _logCategoryDatabaseModelGetLinks(
    LogCategoryDatabaseModel object) {
  return [];
}

void _logCategoryDatabaseModelAttach(
    IsarCollection<dynamic> col, Id id, LogCategoryDatabaseModel object) {
  object.id = id;
}

extension LogCategoryDatabaseModelQueryWhereSort on QueryBuilder<
    LogCategoryDatabaseModel, LogCategoryDatabaseModel, QWhere> {
  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LogCategoryDatabaseModelQueryWhere on QueryBuilder<
    LogCategoryDatabaseModel, LogCategoryDatabaseModel, QWhereClause> {
  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterWhereClause> idBetween(
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

extension LogCategoryDatabaseModelQueryFilter on QueryBuilder<
    LogCategoryDatabaseModel, LogCategoryDatabaseModel, QFilterCondition> {
  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> addedFromEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> addedFromGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'addedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> addedFromLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'addedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> addedFromBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'addedFrom',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> addedFromStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'addedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> addedFromEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'addedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
          QAfterFilterCondition>
      addedFromContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'addedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
          QAfterFilterCondition>
      addedFromMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'addedFrom',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> addedFromIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addedFrom',
        value: '',
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> addedFromIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'addedFrom',
        value: '',
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> categoryIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> categoryIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> categoryIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> categoryIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoryId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> categoryIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> categoryIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
          QAfterFilterCondition>
      categoryIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categoryId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
          QAfterFilterCondition>
      categoryIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categoryId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> categoryIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> categoryIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categoryId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> categoryNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> categoryNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> categoryNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> categoryNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categoryName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> categoryNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'categoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> categoryNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'categoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
          QAfterFilterCondition>
      categoryNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categoryName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
          QAfterFilterCondition>
      categoryNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categoryName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> categoryNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryName',
        value: '',
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> categoryNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categoryName',
        value: '',
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> createdByUserIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> createdByUserIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> createdByUserIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> createdByUserIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdByUserId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> createdByUserIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'createdByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> createdByUserIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'createdByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
          QAfterFilterCondition>
      createdByUserIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'createdByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
          QAfterFilterCondition>
      createdByUserIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'createdByUserId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> createdByUserIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> createdByUserIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'createdByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> dateCreatedEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateCreated',
        value: value,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> dateCreatedGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateCreated',
        value: value,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> dateCreatedLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateCreated',
        value: value,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> dateCreatedBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateCreated',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> dateModifiedEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateModified',
        value: value,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> dateModifiedGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateModified',
        value: value,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> dateModifiedLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateModified',
        value: value,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> dateModifiedBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateModified',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> idLessThan(
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

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> idBetween(
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

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isAppWriteSynced',
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isAppWriteSynced',
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAppWriteSynced',
        value: value,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> modifiedByUserIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'modifiedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> modifiedByUserIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'modifiedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> modifiedByUserIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'modifiedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> modifiedByUserIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'modifiedByUserId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> modifiedByUserIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'modifiedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> modifiedByUserIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'modifiedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
          QAfterFilterCondition>
      modifiedByUserIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'modifiedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
          QAfterFilterCondition>
      modifiedByUserIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'modifiedByUserId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> modifiedByUserIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'modifiedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel,
      QAfterFilterCondition> modifiedByUserIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'modifiedByUserId',
        value: '',
      ));
    });
  }
}

extension LogCategoryDatabaseModelQueryObject on QueryBuilder<
    LogCategoryDatabaseModel, LogCategoryDatabaseModel, QFilterCondition> {}

extension LogCategoryDatabaseModelQueryLinks on QueryBuilder<
    LogCategoryDatabaseModel, LogCategoryDatabaseModel, QFilterCondition> {}

extension LogCategoryDatabaseModelQuerySortBy on QueryBuilder<
    LogCategoryDatabaseModel, LogCategoryDatabaseModel, QSortBy> {
  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      sortByAddedFrom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedFrom', Sort.asc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      sortByAddedFromDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedFrom', Sort.desc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      sortByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      sortByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      sortByCategoryName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryName', Sort.asc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      sortByCategoryNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryName', Sort.desc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      sortByCreatedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByUserId', Sort.asc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      sortByCreatedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByUserId', Sort.desc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      sortByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.asc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      sortByDateCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.desc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      sortByDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModified', Sort.asc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      sortByDateModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModified', Sort.desc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      sortByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.asc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      sortByIsAppWriteSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.desc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      sortByModifiedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modifiedByUserId', Sort.asc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      sortByModifiedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modifiedByUserId', Sort.desc);
    });
  }
}

extension LogCategoryDatabaseModelQuerySortThenBy on QueryBuilder<
    LogCategoryDatabaseModel, LogCategoryDatabaseModel, QSortThenBy> {
  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      thenByAddedFrom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedFrom', Sort.asc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      thenByAddedFromDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedFrom', Sort.desc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      thenByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      thenByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      thenByCategoryName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryName', Sort.asc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      thenByCategoryNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryName', Sort.desc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      thenByCreatedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByUserId', Sort.asc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      thenByCreatedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByUserId', Sort.desc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      thenByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.asc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      thenByDateCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.desc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      thenByDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModified', Sort.asc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      thenByDateModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModified', Sort.desc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      thenByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.asc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      thenByIsAppWriteSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.desc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      thenByModifiedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modifiedByUserId', Sort.asc);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QAfterSortBy>
      thenByModifiedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modifiedByUserId', Sort.desc);
    });
  }
}

extension LogCategoryDatabaseModelQueryWhereDistinct on QueryBuilder<
    LogCategoryDatabaseModel, LogCategoryDatabaseModel, QDistinct> {
  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QDistinct>
      distinctByAddedFrom({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'addedFrom', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QDistinct>
      distinctByCategoryId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoryId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QDistinct>
      distinctByCategoryName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoryName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QDistinct>
      distinctByCreatedByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdByUserId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QDistinct>
      distinctByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateCreated');
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QDistinct>
      distinctByDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateModified');
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QDistinct>
      distinctByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAppWriteSynced');
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, LogCategoryDatabaseModel, QDistinct>
      distinctByModifiedByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'modifiedByUserId',
          caseSensitive: caseSensitive);
    });
  }
}

extension LogCategoryDatabaseModelQueryProperty on QueryBuilder<
    LogCategoryDatabaseModel, LogCategoryDatabaseModel, QQueryProperty> {
  QueryBuilder<LogCategoryDatabaseModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, String, QQueryOperations>
      addedFromProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'addedFrom');
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, String, QQueryOperations>
      categoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoryId');
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, String, QQueryOperations>
      categoryNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoryName');
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, String, QQueryOperations>
      createdByUserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdByUserId');
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, DateTime, QQueryOperations>
      dateCreatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateCreated');
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, DateTime, QQueryOperations>
      dateModifiedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateModified');
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, bool?, QQueryOperations>
      isAppWriteSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAppWriteSynced');
    });
  }

  QueryBuilder<LogCategoryDatabaseModel, String, QQueryOperations>
      modifiedByUserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'modifiedByUserId');
    });
  }
}
