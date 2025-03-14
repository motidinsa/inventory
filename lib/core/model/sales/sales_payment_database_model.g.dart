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
    r'addedByUserId': PropertySchema(
      id: 0,
      name: r'addedByUserId',
      type: IsarType.string,
    ),
    r'cash': PropertySchema(
      id: 1,
      name: r'cash',
      type: IsarType.double,
    ),
    r'credit': PropertySchema(
      id: 2,
      name: r'credit',
      type: IsarType.double,
    ),
    r'customerId': PropertySchema(
      id: 3,
      name: r'customerId',
      type: IsarType.string,
    ),
    r'dateAdded': PropertySchema(
      id: 4,
      name: r'dateAdded',
      type: IsarType.dateTime,
    ),
    r'dateModified': PropertySchema(
      id: 5,
      name: r'dateModified',
      type: IsarType.dateTime,
    ),
    r'discount': PropertySchema(
      id: 6,
      name: r'discount',
      type: IsarType.double,
    ),
    r'isAppWriteSynced': PropertySchema(
      id: 7,
      name: r'isAppWriteSynced',
      type: IsarType.bool,
    ),
    r'modifiedByUserId': PropertySchema(
      id: 8,
      name: r'modifiedByUserId',
      type: IsarType.string,
    ),
    r'salesPaymentId': PropertySchema(
      id: 9,
      name: r'salesPaymentId',
      type: IsarType.string,
    ),
    r'total': PropertySchema(
      id: 10,
      name: r'total',
      type: IsarType.double,
    ),
    r'transfer': PropertySchema(
      id: 11,
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
  version: '3.1.8',
);

int _salesPaymentDatabaseModelEstimateSize(
  SalesPaymentDatabaseModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.addedByUserId.length * 3;
  {
    final value = object.customerId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.modifiedByUserId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.salesPaymentId.length * 3;
  return bytesCount;
}

void _salesPaymentDatabaseModelSerialize(
  SalesPaymentDatabaseModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.addedByUserId);
  writer.writeDouble(offsets[1], object.cash);
  writer.writeDouble(offsets[2], object.credit);
  writer.writeString(offsets[3], object.customerId);
  writer.writeDateTime(offsets[4], object.dateAdded);
  writer.writeDateTime(offsets[5], object.dateModified);
  writer.writeDouble(offsets[6], object.discount);
  writer.writeBool(offsets[7], object.isAppWriteSynced);
  writer.writeString(offsets[8], object.modifiedByUserId);
  writer.writeString(offsets[9], object.salesPaymentId);
  writer.writeDouble(offsets[10], object.total);
  writer.writeDouble(offsets[11], object.transfer);
}

SalesPaymentDatabaseModel _salesPaymentDatabaseModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SalesPaymentDatabaseModel(
    addedByUserId: reader.readString(offsets[0]),
    cash: reader.readDouble(offsets[1]),
    credit: reader.readDouble(offsets[2]),
    customerId: reader.readStringOrNull(offsets[3]),
    dateAdded: reader.readDateTime(offsets[4]),
    dateModified: reader.readDateTimeOrNull(offsets[5]),
    discount: reader.readDouble(offsets[6]),
    isAppWriteSynced: reader.readBoolOrNull(offsets[7]),
    modifiedByUserId: reader.readStringOrNull(offsets[8]),
    salesPaymentId: reader.readString(offsets[9]),
    total: reader.readDouble(offsets[10]),
    transfer: reader.readDouble(offsets[11]),
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
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    case 7:
      return (reader.readBoolOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readString(offset)) as P;
    case 10:
      return (reader.readDouble(offset)) as P;
    case 11:
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> addedByUserIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> addedByUserIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'addedByUserId',
        value: '',
      ));
    });
  }

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
      QAfterFilterCondition> customerIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerId',
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> customerIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerId',
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> customerIdEqualTo(
    String? value, {
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
    String? value, {
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
    String? value, {
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
    String? lower,
    String? upper, {
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
      QAfterFilterCondition> dateAddedEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateAdded',
        value: value,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> dateAddedGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateAdded',
        value: value,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> dateAddedLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateAdded',
        value: value,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> dateAddedBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateAdded',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> dateModifiedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateModified',
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> dateModifiedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateModified',
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> dateModifiedEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateModified',
        value: value,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> dateModifiedGreaterThan(
    DateTime? value, {
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> dateModifiedLessThan(
    DateTime? value, {
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> dateModifiedBetween(
    DateTime? lower,
    DateTime? upper, {
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> discountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'discount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> discountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'discount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> discountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'discount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> discountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'discount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
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
      QAfterFilterCondition> modifiedByUserIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'modifiedByUserId',
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> modifiedByUserIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'modifiedByUserId',
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> modifiedByUserIdEqualTo(
    String? value, {
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> modifiedByUserIdGreaterThan(
    String? value, {
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> modifiedByUserIdLessThan(
    String? value, {
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> modifiedByUserIdBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
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

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> modifiedByUserIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'modifiedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterFilterCondition> modifiedByUserIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'modifiedByUserId',
        value: '',
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
      QAfterSortBy> sortByAddedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedByUserId', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> sortByAddedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedByUserId', Sort.desc);
    });
  }

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
      QAfterSortBy> sortByDateAdded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateAdded', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> sortByDateAddedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateAdded', Sort.desc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> sortByDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModified', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> sortByDateModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModified', Sort.desc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> sortByDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discount', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> sortByDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discount', Sort.desc);
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
      QAfterSortBy> sortByModifiedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modifiedByUserId', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> sortByModifiedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modifiedByUserId', Sort.desc);
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
      QAfterSortBy> thenByAddedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedByUserId', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenByAddedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedByUserId', Sort.desc);
    });
  }

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
      QAfterSortBy> thenByDateAdded() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateAdded', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenByDateAddedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateAdded', Sort.desc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenByDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModified', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenByDateModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModified', Sort.desc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenByDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discount', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenByDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discount', Sort.desc);
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
      QAfterSortBy> thenByModifiedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modifiedByUserId', Sort.asc);
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel,
      QAfterSortBy> thenByModifiedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modifiedByUserId', Sort.desc);
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
      distinctByAddedByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'addedByUserId',
          caseSensitive: caseSensitive);
    });
  }

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
      distinctByDateAdded() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateAdded');
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel, QDistinct>
      distinctByDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateModified');
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel, QDistinct>
      distinctByDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'discount');
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel, QDistinct>
      distinctByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAppWriteSynced');
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, SalesPaymentDatabaseModel, QDistinct>
      distinctByModifiedByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'modifiedByUserId',
          caseSensitive: caseSensitive);
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

  QueryBuilder<SalesPaymentDatabaseModel, String, QQueryOperations>
      addedByUserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'addedByUserId');
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

  QueryBuilder<SalesPaymentDatabaseModel, String?, QQueryOperations>
      customerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerId');
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, DateTime, QQueryOperations>
      dateAddedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateAdded');
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, DateTime?, QQueryOperations>
      dateModifiedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateModified');
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, double, QQueryOperations>
      discountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'discount');
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, bool?, QQueryOperations>
      isAppWriteSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAppWriteSynced');
    });
  }

  QueryBuilder<SalesPaymentDatabaseModel, String?, QQueryOperations>
      modifiedByUserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'modifiedByUserId');
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
