// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_deleted_vendor_database_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLogDeletedVendorDatabaseModelCollection on Isar {
  IsarCollection<LogDeletedVendorDatabaseModel>
      get logDeletedVendorDatabaseModels => this.collection();
}

const LogDeletedVendorDatabaseModelSchema = CollectionSchema(
  name: r'LogDeletedVendorDatabaseModel',
  id: -3230652750108265260,
  properties: {
    r'companyId': PropertySchema(
      id: 0,
      name: r'companyId',
      type: IsarType.string,
    ),
    r'deletedByUserId': PropertySchema(
      id: 1,
      name: r'deletedByUserId',
      type: IsarType.string,
    ),
    r'deletedDate': PropertySchema(
      id: 2,
      name: r'deletedDate',
      type: IsarType.dateTime,
    ),
    r'isAppWriteSynced': PropertySchema(
      id: 3,
      name: r'isAppWriteSynced',
      type: IsarType.bool,
    ),
    r'vendorId': PropertySchema(
      id: 4,
      name: r'vendorId',
      type: IsarType.string,
    )
  },
  estimateSize: _logDeletedVendorDatabaseModelEstimateSize,
  serialize: _logDeletedVendorDatabaseModelSerialize,
  deserialize: _logDeletedVendorDatabaseModelDeserialize,
  deserializeProp: _logDeletedVendorDatabaseModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _logDeletedVendorDatabaseModelGetId,
  getLinks: _logDeletedVendorDatabaseModelGetLinks,
  attach: _logDeletedVendorDatabaseModelAttach,
  version: '3.1.0+1',
);

int _logDeletedVendorDatabaseModelEstimateSize(
  LogDeletedVendorDatabaseModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.companyId.length * 3;
  bytesCount += 3 + object.deletedByUserId.length * 3;
  bytesCount += 3 + object.vendorId.length * 3;
  return bytesCount;
}

void _logDeletedVendorDatabaseModelSerialize(
  LogDeletedVendorDatabaseModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.companyId);
  writer.writeString(offsets[1], object.deletedByUserId);
  writer.writeDateTime(offsets[2], object.deletedDate);
  writer.writeBool(offsets[3], object.isAppWriteSynced);
  writer.writeString(offsets[4], object.vendorId);
}

LogDeletedVendorDatabaseModel _logDeletedVendorDatabaseModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LogDeletedVendorDatabaseModel(
    companyId: reader.readString(offsets[0]),
    deletedByUserId: reader.readString(offsets[1]),
    deletedDate: reader.readDateTime(offsets[2]),
    isAppWriteSynced: reader.readBoolOrNull(offsets[3]),
    vendorId: reader.readString(offsets[4]),
  );
  object.id = id;
  return object;
}

P _logDeletedVendorDatabaseModelDeserializeProp<P>(
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
      return (reader.readBoolOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _logDeletedVendorDatabaseModelGetId(LogDeletedVendorDatabaseModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _logDeletedVendorDatabaseModelGetLinks(
    LogDeletedVendorDatabaseModel object) {
  return [];
}

void _logDeletedVendorDatabaseModelAttach(
    IsarCollection<dynamic> col, Id id, LogDeletedVendorDatabaseModel object) {
  object.id = id;
}

extension LogDeletedVendorDatabaseModelQueryWhereSort on QueryBuilder<
    LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel, QWhere> {
  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LogDeletedVendorDatabaseModelQueryWhere on QueryBuilder<
    LogDeletedVendorDatabaseModel,
    LogDeletedVendorDatabaseModel,
    QWhereClause> {
  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
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

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
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

extension LogDeletedVendorDatabaseModelQueryFilter on QueryBuilder<
    LogDeletedVendorDatabaseModel,
    LogDeletedVendorDatabaseModel,
    QFilterCondition> {
  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> companyIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'companyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> companyIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'companyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> companyIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'companyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> companyIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'companyId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> companyIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'companyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> companyIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'companyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
          QAfterFilterCondition>
      companyIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'companyId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
          QAfterFilterCondition>
      companyIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'companyId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> companyIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'companyId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> companyIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'companyId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> deletedByUserIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deletedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> deletedByUserIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deletedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> deletedByUserIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deletedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> deletedByUserIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deletedByUserId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> deletedByUserIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'deletedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> deletedByUserIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'deletedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
          QAfterFilterCondition>
      deletedByUserIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'deletedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
          QAfterFilterCondition>
      deletedByUserIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'deletedByUserId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> deletedByUserIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deletedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> deletedByUserIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'deletedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> deletedDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deletedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> deletedDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deletedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> deletedDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deletedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> deletedDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deletedDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
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

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
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

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
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

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isAppWriteSynced',
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isAppWriteSynced',
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAppWriteSynced',
        value: value,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> vendorIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vendorId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> vendorIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'vendorId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> vendorIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'vendorId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> vendorIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'vendorId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> vendorIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'vendorId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> vendorIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'vendorId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
          QAfterFilterCondition>
      vendorIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'vendorId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
          QAfterFilterCondition>
      vendorIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'vendorId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> vendorIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vendorId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterFilterCondition> vendorIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'vendorId',
        value: '',
      ));
    });
  }
}

extension LogDeletedVendorDatabaseModelQueryObject on QueryBuilder<
    LogDeletedVendorDatabaseModel,
    LogDeletedVendorDatabaseModel,
    QFilterCondition> {}

extension LogDeletedVendorDatabaseModelQueryLinks on QueryBuilder<
    LogDeletedVendorDatabaseModel,
    LogDeletedVendorDatabaseModel,
    QFilterCondition> {}

extension LogDeletedVendorDatabaseModelQuerySortBy on QueryBuilder<
    LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel, QSortBy> {
  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterSortBy> sortByCompanyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.asc);
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterSortBy> sortByCompanyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.desc);
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterSortBy> sortByDeletedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedByUserId', Sort.asc);
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterSortBy> sortByDeletedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedByUserId', Sort.desc);
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterSortBy> sortByDeletedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedDate', Sort.asc);
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterSortBy> sortByDeletedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedDate', Sort.desc);
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterSortBy> sortByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.asc);
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterSortBy> sortByIsAppWriteSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.desc);
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterSortBy> sortByVendorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorId', Sort.asc);
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterSortBy> sortByVendorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorId', Sort.desc);
    });
  }
}

extension LogDeletedVendorDatabaseModelQuerySortThenBy on QueryBuilder<
    LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel, QSortThenBy> {
  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterSortBy> thenByCompanyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.asc);
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterSortBy> thenByCompanyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.desc);
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterSortBy> thenByDeletedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedByUserId', Sort.asc);
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterSortBy> thenByDeletedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedByUserId', Sort.desc);
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterSortBy> thenByDeletedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedDate', Sort.asc);
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterSortBy> thenByDeletedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedDate', Sort.desc);
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterSortBy> thenByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.asc);
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterSortBy> thenByIsAppWriteSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.desc);
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterSortBy> thenByVendorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorId', Sort.asc);
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QAfterSortBy> thenByVendorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorId', Sort.desc);
    });
  }
}

extension LogDeletedVendorDatabaseModelQueryWhereDistinct on QueryBuilder<
    LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel, QDistinct> {
  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QDistinct> distinctByCompanyId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'companyId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QDistinct> distinctByDeletedByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deletedByUserId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QDistinct> distinctByDeletedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deletedDate');
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QDistinct> distinctByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAppWriteSynced');
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, LogDeletedVendorDatabaseModel,
      QDistinct> distinctByVendorId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vendorId', caseSensitive: caseSensitive);
    });
  }
}

extension LogDeletedVendorDatabaseModelQueryProperty on QueryBuilder<
    LogDeletedVendorDatabaseModel,
    LogDeletedVendorDatabaseModel,
    QQueryProperty> {
  QueryBuilder<LogDeletedVendorDatabaseModel, int, QQueryOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, String, QQueryOperations>
      companyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'companyId');
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, String, QQueryOperations>
      deletedByUserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deletedByUserId');
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, DateTime, QQueryOperations>
      deletedDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deletedDate');
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, bool?, QQueryOperations>
      isAppWriteSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAppWriteSynced');
    });
  }

  QueryBuilder<LogDeletedVendorDatabaseModel, String, QQueryOperations>
      vendorIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vendorId');
    });
  }
}
