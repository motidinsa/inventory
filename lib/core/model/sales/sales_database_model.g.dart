// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sales_database_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSalesDatabaseModelCollection on Isar {
  IsarCollection<SalesDatabaseModel> get salesDatabaseModels =>
      this.collection();
}

const SalesDatabaseModelSchema = CollectionSchema(
  name: r'SalesDatabaseModel',
  id: -4036614554935199430,
  properties: {
    r'customerId': PropertySchema(
      id: 0,
      name: r'customerId',
      type: IsarType.long,
    ),
    r'dateCreated': PropertySchema(
      id: 1,
      name: r'dateCreated',
      type: IsarType.dateTime,
    ),
    r'groupSalesId': PropertySchema(
      id: 2,
      name: r'groupSalesId',
      type: IsarType.string,
    ),
    r'isAppWriteSynced': PropertySchema(
      id: 3,
      name: r'isAppWriteSynced',
      type: IsarType.bool,
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
    r'price': PropertySchema(
      id: 6,
      name: r'price',
      type: IsarType.double,
    ),
    r'productId': PropertySchema(
      id: 7,
      name: r'productId',
      type: IsarType.string,
    ),
    r'quantity': PropertySchema(
      id: 8,
      name: r'quantity',
      type: IsarType.double,
    ),
    r'salesDate': PropertySchema(
      id: 9,
      name: r'salesDate',
      type: IsarType.dateTime,
    ),
    r'salesId': PropertySchema(
      id: 10,
      name: r'salesId',
      type: IsarType.string,
    ),
    r'totalAmount': PropertySchema(
      id: 11,
      name: r'totalAmount',
      type: IsarType.double,
    ),
    r'vendorId': PropertySchema(
      id: 12,
      name: r'vendorId',
      type: IsarType.string,
    )
  },
  estimateSize: _salesDatabaseModelEstimateSize,
  serialize: _salesDatabaseModelSerialize,
  deserialize: _salesDatabaseModelDeserialize,
  deserializeProp: _salesDatabaseModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _salesDatabaseModelGetId,
  getLinks: _salesDatabaseModelGetLinks,
  attach: _salesDatabaseModelAttach,
  version: '3.1.0+1',
);

int _salesDatabaseModelEstimateSize(
  SalesDatabaseModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.groupSalesId.length * 3;
  {
    final value = object.lastModifiedByUserId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.productId.length * 3;
  bytesCount += 3 + object.salesId.length * 3;
  {
    final value = object.vendorId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _salesDatabaseModelSerialize(
  SalesDatabaseModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.customerId);
  writer.writeDateTime(offsets[1], object.dateCreated);
  writer.writeString(offsets[2], object.groupSalesId);
  writer.writeBool(offsets[3], object.isAppWriteSynced);
  writer.writeDateTime(offsets[4], object.lastDateModified);
  writer.writeString(offsets[5], object.lastModifiedByUserId);
  writer.writeDouble(offsets[6], object.price);
  writer.writeString(offsets[7], object.productId);
  writer.writeDouble(offsets[8], object.quantity);
  writer.writeDateTime(offsets[9], object.salesDate);
  writer.writeString(offsets[10], object.salesId);
  writer.writeDouble(offsets[11], object.totalAmount);
  writer.writeString(offsets[12], object.vendorId);
}

SalesDatabaseModel _salesDatabaseModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SalesDatabaseModel(
    customerId: reader.readLongOrNull(offsets[0]),
    dateCreated: reader.readDateTime(offsets[1]),
    groupSalesId: reader.readString(offsets[2]),
    lastDateModified: reader.readDateTimeOrNull(offsets[4]),
    lastModifiedByUserId: reader.readStringOrNull(offsets[5]),
    price: reader.readDouble(offsets[6]),
    productId: reader.readString(offsets[7]),
    quantity: reader.readDouble(offsets[8]),
    salesDate: reader.readDateTime(offsets[9]),
    salesId: reader.readString(offsets[10]),
    totalAmount: reader.readDouble(offsets[11]),
    vendorId: reader.readStringOrNull(offsets[12]),
  );
  object.id = id;
  object.isAppWriteSynced = reader.readBoolOrNull(offsets[3]);
  return object;
}

P _salesDatabaseModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readBoolOrNull(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readDouble(offset)) as P;
    case 9:
      return (reader.readDateTime(offset)) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readDouble(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _salesDatabaseModelGetId(SalesDatabaseModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _salesDatabaseModelGetLinks(
    SalesDatabaseModel object) {
  return [];
}

void _salesDatabaseModelAttach(
    IsarCollection<dynamic> col, Id id, SalesDatabaseModel object) {
  object.id = id;
}

extension SalesDatabaseModelQueryWhereSort
    on QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QWhere> {
  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SalesDatabaseModelQueryWhere
    on QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QWhereClause> {
  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterWhereClause>
      idBetween(
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

extension SalesDatabaseModelQueryFilter
    on QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QFilterCondition> {
  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      customerIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'customerId',
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      customerIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'customerId',
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      customerIdEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'customerId',
        value: value,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      customerIdGreaterThan(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      customerIdLessThan(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      customerIdBetween(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      dateCreatedEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateCreated',
        value: value,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      dateCreatedGreaterThan(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      dateCreatedLessThan(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      dateCreatedBetween(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      groupSalesIdEqualTo(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      groupSalesIdGreaterThan(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      groupSalesIdLessThan(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      groupSalesIdBetween(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      groupSalesIdStartsWith(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      groupSalesIdEndsWith(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      groupSalesIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'groupSalesId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      groupSalesIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'groupSalesId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      groupSalesIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groupSalesId',
        value: '',
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      groupSalesIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'groupSalesId',
        value: '',
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      isAppWriteSyncedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isAppWriteSynced',
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      isAppWriteSyncedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isAppWriteSynced',
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      isAppWriteSyncedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAppWriteSynced',
        value: value,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      lastDateModifiedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastDateModified',
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      lastDateModifiedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastDateModified',
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      lastDateModifiedEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastDateModified',
        value: value,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      lastDateModifiedGreaterThan(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      lastDateModifiedLessThan(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      lastDateModifiedBetween(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      lastModifiedByUserIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastModifiedByUserId',
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      lastModifiedByUserIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastModifiedByUserId',
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      lastModifiedByUserIdEqualTo(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      lastModifiedByUserIdGreaterThan(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      lastModifiedByUserIdLessThan(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      lastModifiedByUserIdBetween(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      lastModifiedByUserIdStartsWith(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      lastModifiedByUserIdEndsWith(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      lastModifiedByUserIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastModifiedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      lastModifiedByUserIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastModifiedByUserId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      lastModifiedByUserIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastModifiedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      lastModifiedByUserIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastModifiedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      priceEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      priceGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      priceLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'price',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      priceBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'price',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      productIdEqualTo(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      productIdGreaterThan(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      productIdLessThan(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      productIdBetween(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      productIdStartsWith(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      productIdEndsWith(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      productIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'productId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      productIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'productId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      productIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productId',
        value: '',
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      productIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'productId',
        value: '',
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      quantityEqualTo(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      quantityGreaterThan(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      quantityLessThan(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      quantityBetween(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      salesDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'salesDate',
        value: value,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      salesDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'salesDate',
        value: value,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      salesDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'salesDate',
        value: value,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      salesDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'salesDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      salesIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'salesId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      salesIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'salesId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      salesIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'salesId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      salesIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'salesId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      salesIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'salesId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      salesIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'salesId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      salesIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'salesId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      salesIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'salesId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      salesIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'salesId',
        value: '',
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      salesIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'salesId',
        value: '',
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      totalAmountEqualTo(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      totalAmountGreaterThan(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      totalAmountLessThan(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      totalAmountBetween(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      vendorIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'vendorId',
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      vendorIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'vendorId',
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      vendorIdEqualTo(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      vendorIdGreaterThan(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      vendorIdLessThan(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      vendorIdBetween(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      vendorIdStartsWith(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      vendorIdEndsWith(
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

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      vendorIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'vendorId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      vendorIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'vendorId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      vendorIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'vendorId',
        value: '',
      ));
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterFilterCondition>
      vendorIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'vendorId',
        value: '',
      ));
    });
  }
}

extension SalesDatabaseModelQueryObject
    on QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QFilterCondition> {}

extension SalesDatabaseModelQueryLinks
    on QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QFilterCondition> {}

extension SalesDatabaseModelQuerySortBy
    on QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QSortBy> {
  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortByCustomerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortByDateCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortByGroupSalesId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupSalesId', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortByGroupSalesIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupSalesId', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortByIsAppWriteSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortByLastDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDateModified', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortByLastDateModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDateModified', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortByLastModifiedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedByUserId', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortByLastModifiedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedByUserId', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortBySalesDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesDate', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortBySalesDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesDate', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortBySalesId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesId', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortBySalesIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesId', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortByTotalAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortByTotalAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortByVendorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorId', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      sortByVendorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorId', Sort.desc);
    });
  }
}

extension SalesDatabaseModelQuerySortThenBy
    on QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QSortThenBy> {
  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenByCustomerIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'customerId', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenByDateCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenByGroupSalesId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupSalesId', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenByGroupSalesIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupSalesId', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenByIsAppWriteSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenByLastDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDateModified', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenByLastDateModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDateModified', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenByLastModifiedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedByUserId', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenByLastModifiedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedByUserId', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenBySalesDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesDate', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenBySalesDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesDate', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenBySalesId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesId', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenBySalesIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesId', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenByTotalAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenByTotalAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalAmount', Sort.desc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenByVendorId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorId', Sort.asc);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QAfterSortBy>
      thenByVendorIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'vendorId', Sort.desc);
    });
  }
}

extension SalesDatabaseModelQueryWhereDistinct
    on QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QDistinct> {
  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QDistinct>
      distinctByCustomerId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'customerId');
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QDistinct>
      distinctByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateCreated');
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QDistinct>
      distinctByGroupSalesId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'groupSalesId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QDistinct>
      distinctByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAppWriteSynced');
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QDistinct>
      distinctByLastDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastDateModified');
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QDistinct>
      distinctByLastModifiedByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastModifiedByUserId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QDistinct>
      distinctByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'price');
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QDistinct>
      distinctByProductId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QDistinct>
      distinctByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantity');
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QDistinct>
      distinctBySalesDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'salesDate');
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QDistinct>
      distinctBySalesId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'salesId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QDistinct>
      distinctByTotalAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalAmount');
    });
  }

  QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QDistinct>
      distinctByVendorId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'vendorId', caseSensitive: caseSensitive);
    });
  }
}

extension SalesDatabaseModelQueryProperty
    on QueryBuilder<SalesDatabaseModel, SalesDatabaseModel, QQueryProperty> {
  QueryBuilder<SalesDatabaseModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SalesDatabaseModel, int?, QQueryOperations>
      customerIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'customerId');
    });
  }

  QueryBuilder<SalesDatabaseModel, DateTime, QQueryOperations>
      dateCreatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateCreated');
    });
  }

  QueryBuilder<SalesDatabaseModel, String, QQueryOperations>
      groupSalesIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'groupSalesId');
    });
  }

  QueryBuilder<SalesDatabaseModel, bool?, QQueryOperations>
      isAppWriteSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAppWriteSynced');
    });
  }

  QueryBuilder<SalesDatabaseModel, DateTime?, QQueryOperations>
      lastDateModifiedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastDateModified');
    });
  }

  QueryBuilder<SalesDatabaseModel, String?, QQueryOperations>
      lastModifiedByUserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastModifiedByUserId');
    });
  }

  QueryBuilder<SalesDatabaseModel, double, QQueryOperations> priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'price');
    });
  }

  QueryBuilder<SalesDatabaseModel, String, QQueryOperations>
      productIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productId');
    });
  }

  QueryBuilder<SalesDatabaseModel, double, QQueryOperations>
      quantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantity');
    });
  }

  QueryBuilder<SalesDatabaseModel, DateTime, QQueryOperations>
      salesDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'salesDate');
    });
  }

  QueryBuilder<SalesDatabaseModel, String, QQueryOperations> salesIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'salesId');
    });
  }

  QueryBuilder<SalesDatabaseModel, double, QQueryOperations>
      totalAmountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalAmount');
    });
  }

  QueryBuilder<SalesDatabaseModel, String?, QQueryOperations>
      vendorIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'vendorId');
    });
  }
}
