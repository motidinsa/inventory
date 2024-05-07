// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_deleted_customer_database_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLogDeletedCustomerDatabaseModelCollection on Isar {
  IsarCollection<LogDeletedCustomerDatabaseModel>
      get logDeletedCustomerDatabaseModels => this.collection();
}

const LogDeletedCustomerDatabaseModelSchema = CollectionSchema(
  name: r'LogDeletedCustomerDatabaseModel',
  id: -3660779131613158071,
  properties: {
    r'companyId': PropertySchema(
      id: 0,
      name: r'companyId',
      type: IsarType.string,
    ),
    r'customerId': PropertySchema(
      id: 1,
      name: r'customerId',
      type: IsarType.string,
    ),
    r'deletedByUserId': PropertySchema(
      id: 2,
      name: r'deletedByUserId',
      type: IsarType.string,
    ),
    r'deletedDate': PropertySchema(
      id: 3,
      name: r'deletedDate',
      type: IsarType.dateTime,
    ),
    r'isAppWriteSynced': PropertySchema(
      id: 4,
      name: r'isAppWriteSynced',
      type: IsarType.bool,
    )
  },
  estimateSize: _logDeletedCustomerDatabaseModelEstimateSize,
  serialize: _logDeletedCustomerDatabaseModelSerialize,
  deserialize: _logDeletedCustomerDatabaseModelDeserialize,
  deserializeProp: _logDeletedCustomerDatabaseModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _logDeletedCustomerDatabaseModelGetId,
  getLinks: _logDeletedCustomerDatabaseModelGetLinks,
  attach: _logDeletedCustomerDatabaseModelAttach,
  version: '3.1.0+1',
);

int _logDeletedCustomerDatabaseModelEstimateSize(
  LogDeletedCustomerDatabaseModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.companyId.length * 3;
  bytesCount += 3 + object.customerId.length * 3;
  bytesCount += 3 + object.deletedByUserId.length * 3;
  return bytesCount;
}

void _logDeletedCustomerDatabaseModelSerialize(
  LogDeletedCustomerDatabaseModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.companyId);
  writer.writeString(offsets[1], object.customerId);
  writer.writeString(offsets[2], object.deletedByUserId);
  writer.writeDateTime(offsets[3], object.deletedDate);
  writer.writeBool(offsets[4], object.isAppWriteSynced);
}

LogDeletedCustomerDatabaseModel _logDeletedCustomerDatabaseModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LogDeletedCustomerDatabaseModel(
    companyId: reader.readString(offsets[0]),
    customerId: reader.readString(offsets[1]),
    deletedByUserId: reader.readString(offsets[2]),
    deletedDate: reader.readDateTime(offsets[3]),
    isAppWriteSynced: reader.readBoolOrNull(offsets[4]),
  );
  object.id = id;
  return object;
}

P _logDeletedCustomerDatabaseModelDeserializeProp<P>(
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
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _logDeletedCustomerDatabaseModelGetId(
    LogDeletedCustomerDatabaseModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _logDeletedCustomerDatabaseModelGetLinks(
    LogDeletedCustomerDatabaseModel object) {
  return [];
}

void _logDeletedCustomerDatabaseModelAttach(IsarCollection<dynamic> col, Id id,
    LogDeletedCustomerDatabaseModel object) {
  object.id = id;
}

extension LogDeletedCustomerDatabaseModelQueryWhereSort on QueryBuilder<
    LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel, QWhere> {
  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LogDeletedCustomerDatabaseModelQueryWhere on QueryBuilder<
    LogDeletedCustomerDatabaseModel,
    LogDeletedCustomerDatabaseModel,
    QWhereClause> {
  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
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

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
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

extension LogDeletedCustomerDatabaseModelQueryFilter on QueryBuilder<
    LogDeletedCustomerDatabaseModel,
    LogDeletedCustomerDatabaseModel,
    QFilterCondition> {
  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
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

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
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

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
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

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
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

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
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

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
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

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
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

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
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

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterFilterCondition> companyIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'companyId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterFilterCondition> companyIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'companyId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterFilterCondition> customerIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterFilterCondition> customerIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterFilterCondition> customerIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterFilterCondition> customerIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterFilterCondition> customerIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterFilterCondition> customerIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
          QAfterFilterCondition>
      customerIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
          QAfterFilterCondition>
      customerIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterFilterCondition> customerIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterFilterCondition> customerIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
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

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
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

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
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

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
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

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
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

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
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

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
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

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
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

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterFilterCondition> deletedByUserIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deletedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterFilterCondition> deletedByUserIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'deletedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterFilterCondition> deletedDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deletedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
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

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
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

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
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

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
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

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
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

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
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

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isAppWriteSynced',
      ));
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isAppWriteSynced',
      ));
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAppWriteSynced',
        value: value,
      ));
    });
  }
}

extension LogDeletedCustomerDatabaseModelQueryObject on QueryBuilder<
    LogDeletedCustomerDatabaseModel,
    LogDeletedCustomerDatabaseModel,
    QFilterCondition> {}

extension LogDeletedCustomerDatabaseModelQueryLinks on QueryBuilder<
    LogDeletedCustomerDatabaseModel,
    LogDeletedCustomerDatabaseModel,
    QFilterCondition> {}

extension LogDeletedCustomerDatabaseModelQuerySortBy on QueryBuilder<
    LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel, QSortBy> {
  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterSortBy> sortByCompanyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.asc);
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterSortBy> sortByCompanyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.desc);
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterSortBy> sortByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.asc);
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterSortBy> sortByCustomerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.desc);
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterSortBy> sortByDeletedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedByUserId', Sort.asc);
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterSortBy> sortByDeletedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedByUserId', Sort.desc);
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterSortBy> sortByDeletedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedDate', Sort.asc);
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterSortBy> sortByDeletedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedDate', Sort.desc);
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterSortBy> sortByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.asc);
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterSortBy> sortByIsAppWriteSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.desc);
    });
  }
}

extension LogDeletedCustomerDatabaseModelQuerySortThenBy on QueryBuilder<
    LogDeletedCustomerDatabaseModel,
    LogDeletedCustomerDatabaseModel,
    QSortThenBy> {
  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterSortBy> thenByCompanyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.asc);
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterSortBy> thenByCompanyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.desc);
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterSortBy> thenByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.asc);
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterSortBy> thenByCustomerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.desc);
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterSortBy> thenByDeletedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedByUserId', Sort.asc);
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterSortBy> thenByDeletedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedByUserId', Sort.desc);
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterSortBy> thenByDeletedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedDate', Sort.asc);
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterSortBy> thenByDeletedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedDate', Sort.desc);
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterSortBy> thenByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.asc);
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QAfterSortBy> thenByIsAppWriteSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.desc);
    });
  }
}

extension LogDeletedCustomerDatabaseModelQueryWhereDistinct on QueryBuilder<
    LogDeletedCustomerDatabaseModel,
    LogDeletedCustomerDatabaseModel,
    QDistinct> {
  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QDistinct> distinctByCompanyId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'companyId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QDistinct> distinctByCustomerId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QDistinct> distinctByDeletedByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deletedByUserId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QDistinct> distinctByDeletedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deletedDate');
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, LogDeletedCustomerDatabaseModel,
      QDistinct> distinctByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAppWriteSynced');
    });
  }
}

extension LogDeletedCustomerDatabaseModelQueryProperty on QueryBuilder<
    LogDeletedCustomerDatabaseModel,
    LogDeletedCustomerDatabaseModel,
    QQueryProperty> {
  QueryBuilder<LogDeletedCustomerDatabaseModel, int, QQueryOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, String, QQueryOperations>
      companyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'companyId');
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, String, QQueryOperations>
      customerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerId');
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, String, QQueryOperations>
      deletedByUserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deletedByUserId');
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, DateTime, QQueryOperations>
      deletedDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deletedDate');
    });
  }

  QueryBuilder<LogDeletedCustomerDatabaseModel, bool?, QQueryOperations>
      isAppWriteSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAppWriteSynced');
    });
  }
}
