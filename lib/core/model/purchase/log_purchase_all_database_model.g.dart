// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_purchase_all_database_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLogPurchaseAllDatabaseModelCollection on Isar {
  IsarCollection<LogPurchaseAllDatabaseModel>
      get logPurchaseAllDatabaseModels => this.collection();
}

const LogPurchaseAllDatabaseModelSchema = CollectionSchema(
  name: r'LogPurchaseAllDatabaseModel',
  id: -2358880498773911317,
  properties: {
    r'addedByUserId': PropertySchema(
      id: 0,
      name: r'addedByUserId',
      type: IsarType.string,
    ),
    r'companyId': PropertySchema(
      id: 1,
      name: r'companyId',
      type: IsarType.string,
    ),
    r'cost': PropertySchema(
      id: 2,
      name: r'cost',
      type: IsarType.double,
    ),
    r'dateCreated': PropertySchema(
      id: 3,
      name: r'dateCreated',
      type: IsarType.dateTime,
    ),
    r'lastDateModified': PropertySchema(
      id: 4,
      name: r'lastDateModified',
      type: IsarType.dateTime,
    ),
    r'lastModifiedByUserId': PropertySchema(
      id: 5,
      name: r'lastModifiedByUserId',
      type: IsarType.string,
    ),
    r'productId': PropertySchema(
      id: 6,
      name: r'productId',
      type: IsarType.string,
    ),
    r'purchaseDate': PropertySchema(
      id: 7,
      name: r'purchaseDate',
      type: IsarType.dateTime,
    ),
    r'purchaseId': PropertySchema(
      id: 8,
      name: r'purchaseId',
      type: IsarType.string,
    ),
    r'quantity': PropertySchema(
      id: 9,
      name: r'quantity',
      type: IsarType.double,
    ),
    r'vendorId': PropertySchema(
      id: 10,
      name: r'vendorId',
      type: IsarType.string,
    )
  },
  estimateSize: _logPurchaseAllDatabaseModelEstimateSize,
  serialize: _logPurchaseAllDatabaseModelSerialize,
  deserialize: _logPurchaseAllDatabaseModelDeserialize,
  deserializeProp: _logPurchaseAllDatabaseModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _logPurchaseAllDatabaseModelGetId,
  getLinks: _logPurchaseAllDatabaseModelGetLinks,
  attach: _logPurchaseAllDatabaseModelAttach,
  version: '3.1.8',
);

int _logPurchaseAllDatabaseModelEstimateSize(
  LogPurchaseAllDatabaseModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.addedByUserId.length * 3;
  bytesCount += 3 + object.companyId.length * 3;
  {
    final value = object.lastModifiedByUserId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.productId.length * 3;
  bytesCount += 3 + object.purchaseId.length * 3;
  {
    final value = object.vendorId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _logPurchaseAllDatabaseModelSerialize(
  LogPurchaseAllDatabaseModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.addedByUserId);
  writer.writeString(offsets[1], object.companyId);
  writer.writeDouble(offsets[2], object.cost);
  writer.writeDateTime(offsets[3], object.dateCreated);
  writer.writeDateTime(offsets[4], object.lastDateModified);
  writer.writeString(offsets[5], object.lastModifiedByUserId);
  writer.writeString(offsets[6], object.productId);
  writer.writeDateTime(offsets[7], object.purchaseDate);
  writer.writeString(offsets[8], object.purchaseId);
  writer.writeDouble(offsets[9], object.quantity);
  writer.writeString(offsets[10], object.vendorId);
}

LogPurchaseAllDatabaseModel _logPurchaseAllDatabaseModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LogPurchaseAllDatabaseModel(
    addedByUserId: reader.readString(offsets[0]),
    companyId: reader.readString(offsets[1]),
    cost: reader.readDouble(offsets[2]),
    dateCreated: reader.readDateTime(offsets[3]),
    lastDateModified: reader.readDateTimeOrNull(offsets[4]),
    lastModifiedByUserId: reader.readStringOrNull(offsets[5]),
    productId: reader.readString(offsets[6]),
    purchaseDate: reader.readDateTime(offsets[7]),
    purchaseId: reader.readString(offsets[8]),
    quantity: reader.readDouble(offsets[9]),
    vendorId: reader.readStringOrNull(offsets[10]),
  );
  object.id = id;
  return object;
}

P _logPurchaseAllDatabaseModelDeserializeProp<P>(
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
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readDateTime(offset)) as P;
    case 8:
      return (reader.readString(offset)) as P;
    case 9:
      return (reader.readDouble(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _logPurchaseAllDatabaseModelGetId(LogPurchaseAllDatabaseModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _logPurchaseAllDatabaseModelGetLinks(
    LogPurchaseAllDatabaseModel object) {
  return [];
}

void _logPurchaseAllDatabaseModelAttach(
    IsarCollection<dynamic> col, Id id, LogPurchaseAllDatabaseModel object) {
  object.id = id;
}

extension LogPurchaseAllDatabaseModelQueryWhereSort on QueryBuilder<
    LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel, QWhere> {
  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LogPurchaseAllDatabaseModelQueryWhere on QueryBuilder<
    LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel, QWhereClause> {
  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
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

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
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

extension LogPurchaseAllDatabaseModelQueryFilter on QueryBuilder<
    LogPurchaseAllDatabaseModel,
    LogPurchaseAllDatabaseModel,
    QFilterCondition> {
  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> addedByUserIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> addedByUserIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'addedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> addedByUserIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'addedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> addedByUserIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'addedByUserId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> addedByUserIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'addedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> addedByUserIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'addedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
          QAfterFilterCondition>
      addedByUserIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'addedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
          QAfterFilterCondition>
      addedByUserIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'addedByUserId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> addedByUserIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> addedByUserIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'addedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
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

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
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

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
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

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
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

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
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

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
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

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
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

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
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

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> companyIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'companyId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> companyIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'companyId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> costEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> costGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> costLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cost',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> costBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cost',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> dateCreatedEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateCreated',
        value: value,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
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

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
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

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
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

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
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

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
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

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
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

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> lastDateModifiedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastDateModified',
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> lastDateModifiedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastDateModified',
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> lastDateModifiedEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastDateModified',
        value: value,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> lastDateModifiedGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastDateModified',
        value: value,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> lastDateModifiedLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastDateModified',
        value: value,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> lastDateModifiedBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastDateModified',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastModifiedByUserId',
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastModifiedByUserId',
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastModifiedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastModifiedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastModifiedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastModifiedByUserId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lastModifiedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lastModifiedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
          QAfterFilterCondition>
      lastModifiedByUserIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastModifiedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
          QAfterFilterCondition>
      lastModifiedByUserIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastModifiedByUserId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastModifiedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastModifiedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> productIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> productIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'productId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> productIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'productId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> productIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'productId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> productIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'productId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> productIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'productId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
          QAfterFilterCondition>
      productIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'productId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
          QAfterFilterCondition>
      productIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'productId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> productIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> productIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'productId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> purchaseDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'purchaseDate',
        value: value,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> purchaseDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'purchaseDate',
        value: value,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> purchaseDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'purchaseDate',
        value: value,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> purchaseDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'purchaseDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> purchaseIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'purchaseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> purchaseIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'purchaseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> purchaseIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'purchaseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> purchaseIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'purchaseId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> purchaseIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'purchaseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> purchaseIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'purchaseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
          QAfterFilterCondition>
      purchaseIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'purchaseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
          QAfterFilterCondition>
      purchaseIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'purchaseId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> purchaseIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'purchaseId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> purchaseIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'purchaseId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> quantityEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> quantityGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> quantityLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> quantityBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> vendorIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'vendorId',
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> vendorIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'vendorId',
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> vendorIdEqualTo(
    String? value, {
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

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> vendorIdGreaterThan(
    String? value, {
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

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> vendorIdLessThan(
    String? value, {
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

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> vendorIdBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
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

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
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

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
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

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
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

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> vendorIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vendorId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterFilterCondition> vendorIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'vendorId',
        value: '',
      ));
    });
  }
}

extension LogPurchaseAllDatabaseModelQueryObject on QueryBuilder<
    LogPurchaseAllDatabaseModel,
    LogPurchaseAllDatabaseModel,
    QFilterCondition> {}

extension LogPurchaseAllDatabaseModelQueryLinks on QueryBuilder<
    LogPurchaseAllDatabaseModel,
    LogPurchaseAllDatabaseModel,
    QFilterCondition> {}

extension LogPurchaseAllDatabaseModelQuerySortBy on QueryBuilder<
    LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel, QSortBy> {
  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> sortByAddedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedByUserId', Sort.asc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> sortByAddedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedByUserId', Sort.desc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> sortByCompanyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.asc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> sortByCompanyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.desc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> sortByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> sortByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> sortByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.asc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> sortByDateCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.desc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> sortByLastDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDateModified', Sort.asc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> sortByLastDateModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDateModified', Sort.desc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> sortByLastModifiedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedByUserId', Sort.asc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> sortByLastModifiedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedByUserId', Sort.desc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> sortByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> sortByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> sortByPurchaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseDate', Sort.asc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> sortByPurchaseDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseDate', Sort.desc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> sortByPurchaseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseId', Sort.asc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> sortByPurchaseIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseId', Sort.desc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> sortByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> sortByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> sortByVendorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorId', Sort.asc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> sortByVendorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorId', Sort.desc);
    });
  }
}

extension LogPurchaseAllDatabaseModelQuerySortThenBy on QueryBuilder<
    LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel, QSortThenBy> {
  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> thenByAddedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedByUserId', Sort.asc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> thenByAddedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedByUserId', Sort.desc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> thenByCompanyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.asc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> thenByCompanyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.desc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> thenByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> thenByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> thenByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.asc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> thenByDateCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.desc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> thenByLastDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDateModified', Sort.asc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> thenByLastDateModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDateModified', Sort.desc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> thenByLastModifiedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedByUserId', Sort.asc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> thenByLastModifiedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedByUserId', Sort.desc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> thenByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> thenByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> thenByPurchaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseDate', Sort.asc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> thenByPurchaseDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseDate', Sort.desc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> thenByPurchaseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseId', Sort.asc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> thenByPurchaseIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseId', Sort.desc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> thenByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> thenByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> thenByVendorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorId', Sort.asc);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QAfterSortBy> thenByVendorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorId', Sort.desc);
    });
  }
}

extension LogPurchaseAllDatabaseModelQueryWhereDistinct on QueryBuilder<
    LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel, QDistinct> {
  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QDistinct> distinctByAddedByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'addedByUserId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QDistinct> distinctByCompanyId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'companyId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QDistinct> distinctByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cost');
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QDistinct> distinctByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateCreated');
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QDistinct> distinctByLastDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastDateModified');
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QDistinct> distinctByLastModifiedByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastModifiedByUserId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QDistinct> distinctByProductId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QDistinct> distinctByPurchaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'purchaseDate');
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QDistinct> distinctByPurchaseId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'purchaseId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QDistinct> distinctByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantity');
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel,
      QDistinct> distinctByVendorId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vendorId', caseSensitive: caseSensitive);
    });
  }
}

extension LogPurchaseAllDatabaseModelQueryProperty on QueryBuilder<
    LogPurchaseAllDatabaseModel, LogPurchaseAllDatabaseModel, QQueryProperty> {
  QueryBuilder<LogPurchaseAllDatabaseModel, int, QQueryOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, String, QQueryOperations>
      addedByUserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'addedByUserId');
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, String, QQueryOperations>
      companyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'companyId');
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, double, QQueryOperations>
      costProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cost');
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, DateTime, QQueryOperations>
      dateCreatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateCreated');
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, DateTime?, QQueryOperations>
      lastDateModifiedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastDateModified');
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, String?, QQueryOperations>
      lastModifiedByUserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastModifiedByUserId');
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, String, QQueryOperations>
      productIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productId');
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, DateTime, QQueryOperations>
      purchaseDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'purchaseDate');
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, String, QQueryOperations>
      purchaseIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'purchaseId');
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, double, QQueryOperations>
      quantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantity');
    });
  }

  QueryBuilder<LogPurchaseAllDatabaseModel, String?, QQueryOperations>
      vendorIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vendorId');
    });
  }
}
