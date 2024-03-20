// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_available_database_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPurchaseAvailableDatabaseModelCollection on Isar {
  IsarCollection<PurchaseAvailableDatabaseModel>
      get purchaseAvailableDatabaseModels => this.collection();
}

const PurchaseAvailableDatabaseModelSchema = CollectionSchema(
  name: r'PurchaseAvailableDatabaseModel',
  id: 6525664659571568104,
  properties: {
    r'cost': PropertySchema(
      id: 0,
      name: r'cost',
      type: IsarType.double,
    ),
    r'customerId': PropertySchema(
      id: 1,
      name: r'customerId',
      type: IsarType.long,
    ),
    r'dateCreated': PropertySchema(
      id: 2,
      name: r'dateCreated',
      type: IsarType.dateTime,
    ),
    r'lastDateModified': PropertySchema(
      id: 3,
      name: r'lastDateModified',
      type: IsarType.dateTime,
    ),
    r'lastModifiedByUserId': PropertySchema(
      id: 4,
      name: r'lastModifiedByUserId',
      type: IsarType.string,
    ),
    r'productId': PropertySchema(
      id: 5,
      name: r'productId',
      type: IsarType.string,
    ),
    r'purchaseDate': PropertySchema(
      id: 6,
      name: r'purchaseDate',
      type: IsarType.dateTime,
    ),
    r'purchaseId': PropertySchema(
      id: 7,
      name: r'purchaseId',
      type: IsarType.string,
    ),
    r'quantity': PropertySchema(
      id: 8,
      name: r'quantity',
      type: IsarType.double,
    ),
    r'totalAmount': PropertySchema(
      id: 9,
      name: r'totalAmount',
      type: IsarType.double,
    ),
    r'vendorId': PropertySchema(
      id: 10,
      name: r'vendorId',
      type: IsarType.string,
    )
  },
  estimateSize: _purchaseAvailableDatabaseModelEstimateSize,
  serialize: _purchaseAvailableDatabaseModelSerialize,
  deserialize: _purchaseAvailableDatabaseModelDeserialize,
  deserializeProp: _purchaseAvailableDatabaseModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _purchaseAvailableDatabaseModelGetId,
  getLinks: _purchaseAvailableDatabaseModelGetLinks,
  attach: _purchaseAvailableDatabaseModelAttach,
  version: '3.1.0+1',
);

int _purchaseAvailableDatabaseModelEstimateSize(
  PurchaseAvailableDatabaseModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
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

void _purchaseAvailableDatabaseModelSerialize(
  PurchaseAvailableDatabaseModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.cost);
  writer.writeLong(offsets[1], object.customerId);
  writer.writeDateTime(offsets[2], object.dateCreated);
  writer.writeDateTime(offsets[3], object.lastDateModified);
  writer.writeString(offsets[4], object.lastModifiedByUserId);
  writer.writeString(offsets[5], object.productId);
  writer.writeDateTime(offsets[6], object.purchaseDate);
  writer.writeString(offsets[7], object.purchaseId);
  writer.writeDouble(offsets[8], object.quantity);
  writer.writeDouble(offsets[9], object.totalAmount);
  writer.writeString(offsets[10], object.vendorId);
}

PurchaseAvailableDatabaseModel _purchaseAvailableDatabaseModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PurchaseAvailableDatabaseModel(
    cost: reader.readDouble(offsets[0]),
    customerId: reader.readLongOrNull(offsets[1]),
    dateCreated: reader.readDateTime(offsets[2]),
    lastDateModified: reader.readDateTimeOrNull(offsets[3]),
    lastModifiedByUserId: reader.readStringOrNull(offsets[4]),
    productId: reader.readString(offsets[5]),
    purchaseDate: reader.readDateTime(offsets[6]),
    purchaseId: reader.readString(offsets[7]),
    quantity: reader.readDouble(offsets[8]),
    totalAmount: reader.readDouble(offsets[9]),
    vendorId: reader.readStringOrNull(offsets[10]),
  );
  object.id = id;
  return object;
}

P _purchaseAvailableDatabaseModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readDateTime(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readDouble(offset)) as P;
    case 9:
      return (reader.readDouble(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _purchaseAvailableDatabaseModelGetId(PurchaseAvailableDatabaseModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _purchaseAvailableDatabaseModelGetLinks(
    PurchaseAvailableDatabaseModel object) {
  return [];
}

void _purchaseAvailableDatabaseModelAttach(
    IsarCollection<dynamic> col, Id id, PurchaseAvailableDatabaseModel object) {
  object.id = id;
}

extension PurchaseAvailableDatabaseModelQueryWhereSort on QueryBuilder<
    PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel, QWhere> {
  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PurchaseAvailableDatabaseModelQueryWhere on QueryBuilder<
    PurchaseAvailableDatabaseModel,
    PurchaseAvailableDatabaseModel,
    QWhereClause> {
  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

extension PurchaseAvailableDatabaseModelQueryFilter on QueryBuilder<
    PurchaseAvailableDatabaseModel,
    PurchaseAvailableDatabaseModel,
    QFilterCondition> {
  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> customerIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerId',
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> customerIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerId',
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> customerIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerId',
        value: value,
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> customerIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'customerId',
        value: value,
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> customerIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'customerId',
        value: value,
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> customerIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'customerId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> dateCreatedEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateCreated',
        value: value,
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> lastDateModifiedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastDateModified',
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> lastDateModifiedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastDateModified',
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> lastDateModifiedEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastDateModified',
        value: value,
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastModifiedByUserId',
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastModifiedByUserId',
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastModifiedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastModifiedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> productIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productId',
        value: '',
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> productIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'productId',
        value: '',
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> purchaseDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'purchaseDate',
        value: value,
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> purchaseIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'purchaseId',
        value: '',
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> purchaseIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'purchaseId',
        value: '',
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> totalAmountEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> totalAmountGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> totalAmountLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalAmount',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> totalAmountBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalAmount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> vendorIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'vendorId',
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> vendorIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'vendorId',
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
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

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> vendorIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vendorId',
        value: '',
      ));
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterFilterCondition> vendorIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'vendorId',
        value: '',
      ));
    });
  }
}

extension PurchaseAvailableDatabaseModelQueryObject on QueryBuilder<
    PurchaseAvailableDatabaseModel,
    PurchaseAvailableDatabaseModel,
    QFilterCondition> {}

extension PurchaseAvailableDatabaseModelQueryLinks on QueryBuilder<
    PurchaseAvailableDatabaseModel,
    PurchaseAvailableDatabaseModel,
    QFilterCondition> {}

extension PurchaseAvailableDatabaseModelQuerySortBy on QueryBuilder<
    PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel, QSortBy> {
  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> sortByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> sortByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> sortByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.asc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> sortByCustomerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.desc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> sortByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.asc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> sortByDateCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.desc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> sortByLastDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDateModified', Sort.asc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> sortByLastDateModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDateModified', Sort.desc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> sortByLastModifiedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedByUserId', Sort.asc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> sortByLastModifiedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedByUserId', Sort.desc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> sortByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> sortByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> sortByPurchaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseDate', Sort.asc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> sortByPurchaseDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseDate', Sort.desc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> sortByPurchaseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseId', Sort.asc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> sortByPurchaseIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseId', Sort.desc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> sortByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> sortByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> sortByTotalAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.asc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> sortByTotalAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.desc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> sortByVendorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorId', Sort.asc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> sortByVendorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorId', Sort.desc);
    });
  }
}

extension PurchaseAvailableDatabaseModelQuerySortThenBy on QueryBuilder<
    PurchaseAvailableDatabaseModel,
    PurchaseAvailableDatabaseModel,
    QSortThenBy> {
  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> thenByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> thenByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> thenByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.asc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> thenByCustomerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.desc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> thenByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.asc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> thenByDateCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.desc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> thenByLastDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDateModified', Sort.asc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> thenByLastDateModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDateModified', Sort.desc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> thenByLastModifiedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedByUserId', Sort.asc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> thenByLastModifiedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedByUserId', Sort.desc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> thenByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> thenByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> thenByPurchaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseDate', Sort.asc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> thenByPurchaseDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseDate', Sort.desc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> thenByPurchaseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseId', Sort.asc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> thenByPurchaseIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseId', Sort.desc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> thenByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> thenByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> thenByTotalAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.asc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> thenByTotalAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.desc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> thenByVendorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorId', Sort.asc);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QAfterSortBy> thenByVendorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorId', Sort.desc);
    });
  }
}

extension PurchaseAvailableDatabaseModelQueryWhereDistinct on QueryBuilder<
    PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel, QDistinct> {
  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QDistinct> distinctByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cost');
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QDistinct> distinctByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerId');
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QDistinct> distinctByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateCreated');
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QDistinct> distinctByLastDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastDateModified');
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QDistinct> distinctByLastModifiedByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastModifiedByUserId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QDistinct> distinctByProductId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QDistinct> distinctByPurchaseDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'purchaseDate');
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QDistinct> distinctByPurchaseId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'purchaseId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QDistinct> distinctByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantity');
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QDistinct> distinctByTotalAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalAmount');
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, PurchaseAvailableDatabaseModel,
      QDistinct> distinctByVendorId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vendorId', caseSensitive: caseSensitive);
    });
  }
}

extension PurchaseAvailableDatabaseModelQueryProperty on QueryBuilder<
    PurchaseAvailableDatabaseModel,
    PurchaseAvailableDatabaseModel,
    QQueryProperty> {
  QueryBuilder<PurchaseAvailableDatabaseModel, int, QQueryOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, double, QQueryOperations>
      costProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cost');
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, int?, QQueryOperations>
      customerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerId');
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, DateTime, QQueryOperations>
      dateCreatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateCreated');
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, DateTime?, QQueryOperations>
      lastDateModifiedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastDateModified');
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, String?, QQueryOperations>
      lastModifiedByUserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastModifiedByUserId');
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, String, QQueryOperations>
      productIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productId');
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, DateTime, QQueryOperations>
      purchaseDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'purchaseDate');
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, String, QQueryOperations>
      purchaseIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'purchaseId');
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, double, QQueryOperations>
      quantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantity');
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, double, QQueryOperations>
      totalAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalAmount');
    });
  }

  QueryBuilder<PurchaseAvailableDatabaseModel, String?, QQueryOperations>
      vendorIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vendorId');
    });
  }
}
