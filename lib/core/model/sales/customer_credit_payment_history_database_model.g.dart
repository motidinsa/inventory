// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_credit_payment_history_database_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCustomerCreditPaymentHistoryDatabaseModelCollection on Isar {
  IsarCollection<CustomerCreditPaymentHistoryDatabaseModel>
      get customerCreditPaymentHistoryDatabaseModels => this.collection();
}

const CustomerCreditPaymentHistoryDatabaseModelSchema = CollectionSchema(
  name: r'CustomerCreditPaymentHistoryDatabaseModel',
  id: -6494503286911401683,
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
    r'comment': PropertySchema(
      id: 2,
      name: r'comment',
      type: IsarType.string,
    ),
    r'customerId': PropertySchema(
      id: 3,
      name: r'customerId',
      type: IsarType.string,
    ),
    r'datePaid': PropertySchema(
      id: 4,
      name: r'datePaid',
      type: IsarType.dateTime,
    ),
    r'isAppWriteSynced': PropertySchema(
      id: 5,
      name: r'isAppWriteSynced',
      type: IsarType.bool,
    ),
    r'lastDateModified': PropertySchema(
      id: 6,
      name: r'lastDateModified',
      type: IsarType.dateTime,
    ),
    r'lastModifiedByUserId': PropertySchema(
      id: 7,
      name: r'lastModifiedByUserId',
      type: IsarType.string,
    ),
    r'transfer': PropertySchema(
      id: 8,
      name: r'transfer',
      type: IsarType.double,
    )
  },
  estimateSize: _customerCreditPaymentHistoryDatabaseModelEstimateSize,
  serialize: _customerCreditPaymentHistoryDatabaseModelSerialize,
  deserialize: _customerCreditPaymentHistoryDatabaseModelDeserialize,
  deserializeProp: _customerCreditPaymentHistoryDatabaseModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _customerCreditPaymentHistoryDatabaseModelGetId,
  getLinks: _customerCreditPaymentHistoryDatabaseModelGetLinks,
  attach: _customerCreditPaymentHistoryDatabaseModelAttach,
  version: '3.1.8',
);

int _customerCreditPaymentHistoryDatabaseModelEstimateSize(
  CustomerCreditPaymentHistoryDatabaseModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.addedByUserId.length * 3;
  {
    final value = object.comment;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.customerId.length * 3;
  {
    final value = object.lastModifiedByUserId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _customerCreditPaymentHistoryDatabaseModelSerialize(
  CustomerCreditPaymentHistoryDatabaseModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.addedByUserId);
  writer.writeDouble(offsets[1], object.cash);
  writer.writeString(offsets[2], object.comment);
  writer.writeString(offsets[3], object.customerId);
  writer.writeDateTime(offsets[4], object.datePaid);
  writer.writeBool(offsets[5], object.isAppWriteSynced);
  writer.writeDateTime(offsets[6], object.lastDateModified);
  writer.writeString(offsets[7], object.lastModifiedByUserId);
  writer.writeDouble(offsets[8], object.transfer);
}

CustomerCreditPaymentHistoryDatabaseModel
    _customerCreditPaymentHistoryDatabaseModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CustomerCreditPaymentHistoryDatabaseModel(
    addedByUserId: reader.readString(offsets[0]),
    cash: reader.readDouble(offsets[1]),
    comment: reader.readStringOrNull(offsets[2]),
    customerId: reader.readString(offsets[3]),
    datePaid: reader.readDateTime(offsets[4]),
    isAppWriteSynced: reader.readBoolOrNull(offsets[5]),
    lastDateModified: reader.readDateTimeOrNull(offsets[6]),
    lastModifiedByUserId: reader.readStringOrNull(offsets[7]),
    transfer: reader.readDouble(offsets[8]),
  );
  object.id = id;
  return object;
}

P _customerCreditPaymentHistoryDatabaseModelDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readBoolOrNull(offset)) as P;
    case 6:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _customerCreditPaymentHistoryDatabaseModelGetId(
    CustomerCreditPaymentHistoryDatabaseModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _customerCreditPaymentHistoryDatabaseModelGetLinks(
    CustomerCreditPaymentHistoryDatabaseModel object) {
  return [];
}

void _customerCreditPaymentHistoryDatabaseModelAttach(
    IsarCollection<dynamic> col,
    Id id,
    CustomerCreditPaymentHistoryDatabaseModel object) {
  object.id = id;
}

extension CustomerCreditPaymentHistoryDatabaseModelQueryWhereSort
    on QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel,
        CustomerCreditPaymentHistoryDatabaseModel, QWhere> {
  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CustomerCreditPaymentHistoryDatabaseModelQueryWhere on QueryBuilder<
    CustomerCreditPaymentHistoryDatabaseModel,
    CustomerCreditPaymentHistoryDatabaseModel,
    QWhereClause> {
  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel, QAfterWhereClause> idBetween(
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

extension CustomerCreditPaymentHistoryDatabaseModelQueryFilter on QueryBuilder<
    CustomerCreditPaymentHistoryDatabaseModel,
    CustomerCreditPaymentHistoryDatabaseModel,
    QFilterCondition> {
  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel,
          CustomerCreditPaymentHistoryDatabaseModel, QAfterFilterCondition>
      addedByUserIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'addedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel,
          CustomerCreditPaymentHistoryDatabaseModel, QAfterFilterCondition>
      addedByUserIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'addedByUserId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> addedByUserIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> addedByUserIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'addedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> commentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'comment',
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> commentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'comment',
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> commentEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> commentGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> commentLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> commentBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'comment',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> commentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> commentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel,
          CustomerCreditPaymentHistoryDatabaseModel, QAfterFilterCondition>
      commentContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'comment',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel,
          CustomerCreditPaymentHistoryDatabaseModel, QAfterFilterCondition>
      commentMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'comment',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> commentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'comment',
        value: '',
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> commentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'comment',
        value: '',
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel,
          CustomerCreditPaymentHistoryDatabaseModel, QAfterFilterCondition>
      customerIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'customerId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel,
          CustomerCreditPaymentHistoryDatabaseModel, QAfterFilterCondition>
      customerIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'customerId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> customerIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerId',
        value: '',
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> customerIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'customerId',
        value: '',
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> datePaidEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'datePaid',
        value: value,
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> datePaidGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'datePaid',
        value: value,
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> datePaidLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'datePaid',
        value: value,
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> datePaidBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'datePaid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isAppWriteSynced',
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isAppWriteSynced',
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAppWriteSynced',
        value: value,
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> lastDateModifiedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastDateModified',
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> lastDateModifiedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastDateModified',
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> lastDateModifiedEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastDateModified',
        value: value,
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastModifiedByUserId',
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastModifiedByUserId',
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel,
          CustomerCreditPaymentHistoryDatabaseModel, QAfterFilterCondition>
      lastModifiedByUserIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastModifiedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel,
          CustomerCreditPaymentHistoryDatabaseModel, QAfterFilterCondition>
      lastModifiedByUserIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastModifiedByUserId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastModifiedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastModifiedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
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

extension CustomerCreditPaymentHistoryDatabaseModelQueryObject on QueryBuilder<
    CustomerCreditPaymentHistoryDatabaseModel,
    CustomerCreditPaymentHistoryDatabaseModel,
    QFilterCondition> {}

extension CustomerCreditPaymentHistoryDatabaseModelQueryLinks on QueryBuilder<
    CustomerCreditPaymentHistoryDatabaseModel,
    CustomerCreditPaymentHistoryDatabaseModel,
    QFilterCondition> {}

extension CustomerCreditPaymentHistoryDatabaseModelQuerySortBy on QueryBuilder<
    CustomerCreditPaymentHistoryDatabaseModel,
    CustomerCreditPaymentHistoryDatabaseModel,
    QSortBy> {
  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> sortByAddedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedByUserId', Sort.asc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> sortByAddedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedByUserId', Sort.desc);
    });
  }

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel, QAfterSortBy> sortByCash() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cash', Sort.asc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> sortByCashDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cash', Sort.desc);
    });
  }

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel, QAfterSortBy> sortByComment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.asc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> sortByCommentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.desc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> sortByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.asc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> sortByCustomerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.desc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> sortByDatePaid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'datePaid', Sort.asc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> sortByDatePaidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'datePaid', Sort.desc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> sortByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.asc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> sortByIsAppWriteSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.desc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> sortByLastDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDateModified', Sort.asc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> sortByLastDateModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDateModified', Sort.desc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> sortByLastModifiedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedByUserId', Sort.asc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> sortByLastModifiedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedByUserId', Sort.desc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> sortByTransfer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transfer', Sort.asc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> sortByTransferDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transfer', Sort.desc);
    });
  }
}

extension CustomerCreditPaymentHistoryDatabaseModelQuerySortThenBy
    on QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel,
        CustomerCreditPaymentHistoryDatabaseModel, QSortThenBy> {
  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> thenByAddedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedByUserId', Sort.asc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> thenByAddedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedByUserId', Sort.desc);
    });
  }

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel, QAfterSortBy> thenByCash() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cash', Sort.asc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> thenByCashDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cash', Sort.desc);
    });
  }

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel, QAfterSortBy> thenByComment() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.asc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> thenByCommentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'comment', Sort.desc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> thenByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.asc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> thenByCustomerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.desc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> thenByDatePaid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'datePaid', Sort.asc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> thenByDatePaidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'datePaid', Sort.desc);
    });
  }

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> thenByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.asc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> thenByIsAppWriteSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.desc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> thenByLastDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDateModified', Sort.asc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> thenByLastDateModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDateModified', Sort.desc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> thenByLastModifiedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedByUserId', Sort.asc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> thenByLastModifiedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedByUserId', Sort.desc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> thenByTransfer() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transfer', Sort.asc);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QAfterSortBy> thenByTransferDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'transfer', Sort.desc);
    });
  }
}

extension CustomerCreditPaymentHistoryDatabaseModelQueryWhereDistinct
    on QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel,
        CustomerCreditPaymentHistoryDatabaseModel, QDistinct> {
  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QDistinct> distinctByAddedByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'addedByUserId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel, QDistinct> distinctByCash() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cash');
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QDistinct> distinctByComment({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'comment', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QDistinct> distinctByCustomerId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QDistinct> distinctByDatePaid() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'datePaid');
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QDistinct> distinctByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAppWriteSynced');
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QDistinct> distinctByLastDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastDateModified');
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QDistinct> distinctByLastModifiedByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastModifiedByUserId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<
      CustomerCreditPaymentHistoryDatabaseModel,
      CustomerCreditPaymentHistoryDatabaseModel,
      QDistinct> distinctByTransfer() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'transfer');
    });
  }
}

extension CustomerCreditPaymentHistoryDatabaseModelQueryProperty
    on QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel,
        CustomerCreditPaymentHistoryDatabaseModel, QQueryProperty> {
  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel, int, QQueryOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel, String,
      QQueryOperations> addedByUserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'addedByUserId');
    });
  }

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel, double,
      QQueryOperations> cashProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cash');
    });
  }

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel, String?,
      QQueryOperations> commentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'comment');
    });
  }

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel, String,
      QQueryOperations> customerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerId');
    });
  }

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel, DateTime,
      QQueryOperations> datePaidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'datePaid');
    });
  }

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel, bool?,
      QQueryOperations> isAppWriteSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAppWriteSynced');
    });
  }

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel, DateTime?,
      QQueryOperations> lastDateModifiedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastDateModified');
    });
  }

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel, String?,
      QQueryOperations> lastModifiedByUserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastModifiedByUserId');
    });
  }

  QueryBuilder<CustomerCreditPaymentHistoryDatabaseModel, double,
      QQueryOperations> transferProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'transfer');
    });
  }
}
