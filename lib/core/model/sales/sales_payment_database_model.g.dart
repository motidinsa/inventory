// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_payment_database_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSalesPaymentDatabaseModelCollection on Isar {
  IsarCollection<SalesPaymentDatabaseModel> get salesPaymentDatabaseModels =>
      this.collection();
}

const SalesPaymentDatabaseModelSchema = CollectionSchema(
  name: r'SalesPaymentDatabaseModel',
  id: 1468659235813119651,
  properties: {
    r'cash': PropertySchema(
      id: 0,
      name: r'cash',
      type: IsarType.double,
    ),
    r'credit': PropertySchema(
      id: 1,
      name: r'credit',
      type: IsarType.double,
    ),
    r'customerId': PropertySchema(
      id: 2,
      name: r'customerId',
      type: IsarType.string,
    ),
    r'groupSalesId': PropertySchema(
      id: 3,
      name: r'groupSalesId',
      type: IsarType.string,
    ),
    r'isAppWriteSynced': PropertySchema(
      id: 4,
      name: r'isAppWriteSynced',
      type: IsarType.bool,
    ),
    r'salesPaymentId': PropertySchema(
      id: 5,
      name: r'salesPaymentId',
      type: IsarType.string,
    ),
    r'total': PropertySchema(
      id: 6,
      name: r'total',
      type: IsarType.double,
    ),
    r'transfer': PropertySchema(
      id: 7,
      name: r'transfer',
      type: IsarType.double,
    )
  },
  estimateSize: _salesPaymentDatabaseModelEstimateSize,
  serialize: _salesPaymentDatabaseModelSerialize,
  deserialize: _salesPaymentDatabaseModelDeserialize,
  deserializeProp: _salesPaymentDatabaseModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _salesPaymentDatabaseModelGetId,
  getLinks: _salesPaymentDatabaseModelGetLinks,
  attach: _salesPaymentDatabaseModelAttach,
  version: '3.1.0+1',
);

int _salesPaymentDatabaseModelEstimateSize(
  SalesPaymentDatabaseModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.customerId.length * 3;
  bytesCount += 3 + object.groupSalesId.length * 3;
  bytesCount += 3 + object.salesPaymentId.length * 3;
  return bytesCount;
}

void _salesPaymentDatabaseModelSerialize(
  SalesPaymentDatabaseModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.cash);
  writer.writeDouble(offsets[1], object.credit);
  writer.writeString(offsets[2], object.customerId);
  writer.writeString(offsets[3], object.groupSalesId);
  writer.writeBool(offsets[4], object.isAppWriteSynced);
  writer.writeString(offsets[5], object.salesPaymentId);
  writer.writeDouble(offsets[6], object.total);
  writer.writeDouble(offsets[7], object.transfer);
}

SalesPaymentDatabaseModel _salesPaymentDatabaseModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SalesPaymentDatabaseModel(
    cash: reader.readDouble(offsets[0]),
    credit: reader.readDouble(offsets[1]),
    customerId: reader.readString(offsets[2]),
    groupSalesId: reader.readString(offsets[3]),
    isAppWriteSynced: reader.readBoolOrNull(offsets[4]),
    salesPaymentId: reader.readString(offsets[5]),
    total: reader.readDouble(offsets[6]),
    transfer: reader.readDouble(offsets[7]),
  );
  object.id = id;
  return object;
}

P _salesPaymentDatabaseModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    case 7:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _salesPaymentDatabaseModelGetId(SalesPaymentDatabaseModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _salesPaymentDatabaseModelGetLinks(
    SalesPaymentDatabaseModel object) {
  return [];
}

void _salesPaymentDatabaseModelAttach(
    IsarCollection<dynamic> col, Id id, SalesPaymentDatabaseModel object) {
  object.id = id;
}

extension SalesPaymentDatabaseModelQueryWhereSort on QueryBuilder<
    SalesPaymentDatabaseModel, SalesPaymentDatabaseModel, QWhere> {
  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SalesPaymentDatabaseModelQueryWhere on QueryBuilder<
    SalesPaymentDatabaseModel, SalesPaymentDatabaseModel, QWhereClause> {
  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
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

extension SalesPaymentDatabaseModelQueryFilter on QueryBuilder<
    SalesPaymentDatabaseModel, SalesPaymentDatabaseModel, QFilterCondition> {
  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> cashEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cash',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> cashGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cash',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> cashLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cash',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> cashBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cash',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> creditEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'credit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> creditGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'credit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> creditLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'credit',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> creditBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'credit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> customerIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerId',
        value: '',
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> customerIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerId',
        value: '',
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> groupSalesIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groupSalesId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> groupSalesIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'groupSalesId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> groupSalesIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'groupSalesId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> groupSalesIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'groupSalesId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> groupSalesIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'groupSalesId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> groupSalesIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'groupSalesId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
          QAfterFilterCondition>
      groupSalesIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'groupSalesId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
          QAfterFilterCondition>
      groupSalesIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'groupSalesId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> groupSalesIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groupSalesId',
        value: '',
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> groupSalesIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'groupSalesId',
        value: '',
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isAppWriteSynced',
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isAppWriteSynced',
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAppWriteSynced',
        value: value,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> salesPaymentIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'salesPaymentId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> salesPaymentIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'salesPaymentId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> salesPaymentIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'salesPaymentId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> salesPaymentIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'salesPaymentId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> salesPaymentIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'salesPaymentId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> salesPaymentIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'salesPaymentId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
          QAfterFilterCondition>
      salesPaymentIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'salesPaymentId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
          QAfterFilterCondition>
      salesPaymentIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'salesPaymentId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> salesPaymentIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'salesPaymentId',
        value: '',
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> salesPaymentIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'salesPaymentId',
        value: '',
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> totalEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'total',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> totalGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'total',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> totalLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'total',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> totalBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'total',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> transferEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'transfer',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> transferGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'transfer',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> transferLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'transfer',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> transferBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'transfer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension SalesPaymentDatabaseModelQueryObject on QueryBuilder<
    SalesPaymentDatabaseModel, SalesPaymentDatabaseModel, QFilterCondition> {}

extension SalesPaymentDatabaseModelQueryLinks on QueryBuilder<
    SalesPaymentDatabaseModel, SalesPaymentDatabaseModel, QFilterCondition> {}

extension SalesPaymentDatabaseModelQuerySortBy on QueryBuilder<
    SalesPaymentDatabaseModel, SalesPaymentDatabaseModel, QSortBy> {
  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> sortByCash() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cash', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> sortByCashDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cash', Sort.desc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> sortByCredit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'credit', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> sortByCreditDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'credit', Sort.desc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> sortByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> sortByCustomerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.desc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> sortByGroupSalesId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupSalesId', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> sortByGroupSalesIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupSalesId', Sort.desc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> sortByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> sortByIsAppWriteSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.desc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> sortBySalesPaymentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesPaymentId', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> sortBySalesPaymentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesPaymentId', Sort.desc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> sortByTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> sortByTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.desc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> sortByTransfer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transfer', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> sortByTransferDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transfer', Sort.desc);
    });
  }
}

extension SalesPaymentDatabaseModelQuerySortThenBy on QueryBuilder<
    SalesPaymentDatabaseModel, SalesPaymentDatabaseModel, QSortThenBy> {
  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenByCash() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cash', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenByCashDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cash', Sort.desc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenByCredit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'credit', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenByCreditDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'credit', Sort.desc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenByCustomerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.desc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenByGroupSalesId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupSalesId', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenByGroupSalesIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupSalesId', Sort.desc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenByIsAppWriteSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.desc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenBySalesPaymentId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesPaymentId', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenBySalesPaymentIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesPaymentId', Sort.desc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenByTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenByTotalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'total', Sort.desc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenByTransfer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transfer', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenByTransferDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transfer', Sort.desc);
    });
  }
}

extension SalesPaymentDatabaseModelQueryWhereDistinct on QueryBuilder<
    SalesPaymentDatabaseModel, SalesPaymentDatabaseModel, QDistinct> {
  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel, QDistinct>
      distinctByCash() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cash');
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel, QDistinct>
      distinctByCredit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'credit');
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel, QDistinct>
      distinctByCustomerId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel, QDistinct>
      distinctByGroupSalesId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'groupSalesId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel, QDistinct>
      distinctByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAppWriteSynced');
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel, QDistinct>
      distinctBySalesPaymentId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'salesPaymentId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel, QDistinct>
      distinctByTotal() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'total');
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel, QDistinct>
      distinctByTransfer() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transfer');
    });
  }
}

extension SalesPaymentDatabaseModelQueryProperty on QueryBuilder<
    SalesPaymentDatabaseModel, SalesPaymentDatabaseModel, QQueryProperty> {
  QueryBuilder<SalesPaymentDatabaseModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, double, QQueryOperations>
      cashProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cash');
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, double, QQueryOperations>
      creditProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'credit');
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, String, QQueryOperations>
      customerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerId');
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, String, QQueryOperations>
      groupSalesIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'groupSalesId');
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, bool?, QQueryOperations>
      isAppWriteSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAppWriteSynced');
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, String, QQueryOperations>
      salesPaymentIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'salesPaymentId');
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, double, QQueryOperations>
      totalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'total');
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, double, QQueryOperations>
      transferProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transfer');
    });
  }
}
