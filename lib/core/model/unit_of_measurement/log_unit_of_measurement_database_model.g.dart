// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_unit_of_measurement_database_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLogUnitOfMeasurementDatabaseModelCollection on Isar {
  IsarCollection<LogUnitOfMeasurementDatabaseModel>
      get logUnitOfMeasurementDatabaseModels => this.collection();
}

const LogUnitOfMeasurementDatabaseModelSchema = CollectionSchema(
  name: r'LogUnitOfMeasurementDatabaseModel',
  id: 53693424210590354,
  properties: {
    r'addedFrom': PropertySchema(
      id: 0,
      name: r'addedFrom',
      type: IsarType.string,
    ),
    r'createdByUserId': PropertySchema(
      id: 1,
      name: r'createdByUserId',
      type: IsarType.string,
    ),
    r'dateCreated': PropertySchema(
      id: 2,
      name: r'dateCreated',
      type: IsarType.dateTime,
    ),
    r'dateModified': PropertySchema(
      id: 3,
      name: r'dateModified',
      type: IsarType.dateTime,
    ),
    r'isAppWriteSynced': PropertySchema(
      id: 4,
      name: r'isAppWriteSynced',
      type: IsarType.bool,
    ),
    r'modifiedByUserId': PropertySchema(
      id: 5,
      name: r'modifiedByUserId',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 6,
      name: r'name',
      type: IsarType.string,
    ),
    r'uomId': PropertySchema(
      id: 7,
      name: r'uomId',
      type: IsarType.string,
    )
  },
  estimateSize: _logUnitOfMeasurementDatabaseModelEstimateSize,
  serialize: _logUnitOfMeasurementDatabaseModelSerialize,
  deserialize: _logUnitOfMeasurementDatabaseModelDeserialize,
  deserializeProp: _logUnitOfMeasurementDatabaseModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _logUnitOfMeasurementDatabaseModelGetId,
  getLinks: _logUnitOfMeasurementDatabaseModelGetLinks,
  attach: _logUnitOfMeasurementDatabaseModelAttach,
  version: '3.1.0+1',
);

int _logUnitOfMeasurementDatabaseModelEstimateSize(
  LogUnitOfMeasurementDatabaseModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.addedFrom.length * 3;
  bytesCount += 3 + object.createdByUserId.length * 3;
  bytesCount += 3 + object.modifiedByUserId.length * 3;
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.uomId.length * 3;
  return bytesCount;
}

void _logUnitOfMeasurementDatabaseModelSerialize(
  LogUnitOfMeasurementDatabaseModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.addedFrom);
  writer.writeString(offsets[1], object.createdByUserId);
  writer.writeDateTime(offsets[2], object.dateCreated);
  writer.writeDateTime(offsets[3], object.dateModified);
  writer.writeBool(offsets[4], object.isAppWriteSynced);
  writer.writeString(offsets[5], object.modifiedByUserId);
  writer.writeString(offsets[6], object.name);
  writer.writeString(offsets[7], object.uomId);
}

LogUnitOfMeasurementDatabaseModel _logUnitOfMeasurementDatabaseModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LogUnitOfMeasurementDatabaseModel(
    addedFrom: reader.readString(offsets[0]),
    createdByUserId: reader.readString(offsets[1]),
    dateCreated: reader.readDateTime(offsets[2]),
    dateModified: reader.readDateTime(offsets[3]),
    isAppWriteSynced: reader.readBoolOrNull(offsets[4]),
    modifiedByUserId: reader.readString(offsets[5]),
    name: reader.readString(offsets[6]),
    uomId: reader.readString(offsets[7]),
  );
  object.id = id;
  return object;
}

P _logUnitOfMeasurementDatabaseModelDeserializeProp<P>(
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
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _logUnitOfMeasurementDatabaseModelGetId(
    LogUnitOfMeasurementDatabaseModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _logUnitOfMeasurementDatabaseModelGetLinks(
    LogUnitOfMeasurementDatabaseModel object) {
  return [];
}

void _logUnitOfMeasurementDatabaseModelAttach(IsarCollection<dynamic> col,
    Id id, LogUnitOfMeasurementDatabaseModel object) {
  object.id = id;
}

extension LogUnitOfMeasurementDatabaseModelQueryWhereSort on QueryBuilder<
    LogUnitOfMeasurementDatabaseModel,
    LogUnitOfMeasurementDatabaseModel,
    QWhere> {
  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LogUnitOfMeasurementDatabaseModelQueryWhere on QueryBuilder<
    LogUnitOfMeasurementDatabaseModel,
    LogUnitOfMeasurementDatabaseModel,
    QWhereClause> {
  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterWhereClause> idBetween(
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

extension LogUnitOfMeasurementDatabaseModelQueryFilter on QueryBuilder<
    LogUnitOfMeasurementDatabaseModel,
    LogUnitOfMeasurementDatabaseModel,
    QFilterCondition> {
  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
          LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition>
      addedFromContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'addedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
          LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition>
      addedFromMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'addedFrom',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> addedFromIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addedFrom',
        value: '',
      ));
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> addedFromIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'addedFrom',
        value: '',
      ));
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
          LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition>
      createdByUserIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'createdByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
          LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition>
      createdByUserIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'createdByUserId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> createdByUserIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> createdByUserIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'createdByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> dateCreatedEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateCreated',
        value: value,
      ));
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> dateModifiedEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateModified',
        value: value,
      ));
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isAppWriteSynced',
      ));
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isAppWriteSynced',
      ));
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAppWriteSynced',
        value: value,
      ));
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
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

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
          LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition>
      modifiedByUserIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'modifiedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
          LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition>
      modifiedByUserIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'modifiedByUserId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> modifiedByUserIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'modifiedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> modifiedByUserIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'modifiedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
          LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
          LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition> uomIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uomId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> uomIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uomId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition> uomIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uomId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition> uomIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uomId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition> uomIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'uomId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition> uomIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'uomId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
          LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition>
      uomIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uomId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
          LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition>
      uomIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uomId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterFilterCondition> uomIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uomId',
        value: '',
      ));
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> uomIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uomId',
        value: '',
      ));
    });
  }
}

extension LogUnitOfMeasurementDatabaseModelQueryObject on QueryBuilder<
    LogUnitOfMeasurementDatabaseModel,
    LogUnitOfMeasurementDatabaseModel,
    QFilterCondition> {}

extension LogUnitOfMeasurementDatabaseModelQueryLinks on QueryBuilder<
    LogUnitOfMeasurementDatabaseModel,
    LogUnitOfMeasurementDatabaseModel,
    QFilterCondition> {}

extension LogUnitOfMeasurementDatabaseModelQuerySortBy on QueryBuilder<
    LogUnitOfMeasurementDatabaseModel,
    LogUnitOfMeasurementDatabaseModel,
    QSortBy> {
  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterSortBy> sortByAddedFrom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedFrom', Sort.asc);
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterSortBy> sortByAddedFromDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedFrom', Sort.desc);
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterSortBy> sortByCreatedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByUserId', Sort.asc);
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterSortBy> sortByCreatedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByUserId', Sort.desc);
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterSortBy> sortByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.asc);
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterSortBy> sortByDateCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.desc);
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterSortBy> sortByDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModified', Sort.asc);
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterSortBy> sortByDateModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModified', Sort.desc);
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterSortBy> sortByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.asc);
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterSortBy> sortByIsAppWriteSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.desc);
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterSortBy> sortByModifiedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modifiedByUserId', Sort.asc);
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterSortBy> sortByModifiedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modifiedByUserId', Sort.desc);
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterSortBy> sortByUomId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uomId', Sort.asc);
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterSortBy> sortByUomIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uomId', Sort.desc);
    });
  }
}

extension LogUnitOfMeasurementDatabaseModelQuerySortThenBy on QueryBuilder<
    LogUnitOfMeasurementDatabaseModel,
    LogUnitOfMeasurementDatabaseModel,
    QSortThenBy> {
  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterSortBy> thenByAddedFrom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedFrom', Sort.asc);
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterSortBy> thenByAddedFromDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedFrom', Sort.desc);
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterSortBy> thenByCreatedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByUserId', Sort.asc);
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterSortBy> thenByCreatedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByUserId', Sort.desc);
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterSortBy> thenByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.asc);
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterSortBy> thenByDateCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.desc);
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterSortBy> thenByDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModified', Sort.asc);
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterSortBy> thenByDateModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModified', Sort.desc);
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterSortBy> thenByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.asc);
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterSortBy> thenByIsAppWriteSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.desc);
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterSortBy> thenByModifiedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modifiedByUserId', Sort.asc);
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QAfterSortBy> thenByModifiedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modifiedByUserId', Sort.desc);
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterSortBy> thenByUomId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uomId', Sort.asc);
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QAfterSortBy> thenByUomIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uomId', Sort.desc);
    });
  }
}

extension LogUnitOfMeasurementDatabaseModelQueryWhereDistinct on QueryBuilder<
    LogUnitOfMeasurementDatabaseModel,
    LogUnitOfMeasurementDatabaseModel,
    QDistinct> {
  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QDistinct> distinctByAddedFrom({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'addedFrom', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QDistinct> distinctByCreatedByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdByUserId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QDistinct> distinctByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateCreated');
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel, QDistinct> distinctByDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateModified');
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QDistinct> distinctByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAppWriteSynced');
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QDistinct> distinctByModifiedByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'modifiedByUserId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QDistinct> distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<
      LogUnitOfMeasurementDatabaseModel,
      LogUnitOfMeasurementDatabaseModel,
      QDistinct> distinctByUomId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uomId', caseSensitive: caseSensitive);
    });
  }
}

extension LogUnitOfMeasurementDatabaseModelQueryProperty on QueryBuilder<
    LogUnitOfMeasurementDatabaseModel,
    LogUnitOfMeasurementDatabaseModel,
    QQueryProperty> {
  QueryBuilder<LogUnitOfMeasurementDatabaseModel, int, QQueryOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel, String, QQueryOperations>
      addedFromProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'addedFrom');
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel, String, QQueryOperations>
      createdByUserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdByUserId');
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel, DateTime, QQueryOperations>
      dateCreatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateCreated');
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel, DateTime, QQueryOperations>
      dateModifiedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateModified');
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel, bool?, QQueryOperations>
      isAppWriteSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAppWriteSynced');
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel, String, QQueryOperations>
      modifiedByUserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'modifiedByUserId');
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel, String, QQueryOperations>
      nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<LogUnitOfMeasurementDatabaseModel, String, QQueryOperations>
      uomIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uomId');
    });
  }
}
