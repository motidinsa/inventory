// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'log_product_database_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLogProductDatabaseModelCollection on Isar {
  IsarCollection<LogProductDatabaseModel> get logProductDatabaseModels =>
      this.collection();
}

const LogProductDatabaseModelSchema = CollectionSchema(
  name: r'LogProductDatabaseModel',
  id: 3994390997897504138,
  properties: {
    r'categoryId': PropertySchema(
      id: 0,
      name: r'categoryId',
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
    r'description': PropertySchema(
      id: 6,
      name: r'description',
      type: IsarType.string,
    ),
    r'isAppWriteSynced': PropertySchema(
      id: 7,
      name: r'isAppWriteSynced',
      type: IsarType.bool,
    ),
    r'localImagePath': PropertySchema(
      id: 8,
      name: r'localImagePath',
      type: IsarType.string,
    ),
    r'modifiedByUserId': PropertySchema(
      id: 9,
      name: r'modifiedByUserId',
      type: IsarType.string,
    ),
    r'onlineImagePath': PropertySchema(
      id: 10,
      name: r'onlineImagePath',
      type: IsarType.string,
    ),
    r'price': PropertySchema(
      id: 11,
      name: r'price',
      type: IsarType.double,
    ),
    r'productId': PropertySchema(
      id: 12,
      name: r'productId',
      type: IsarType.string,
    ),
    r'productName': PropertySchema(
      id: 13,
      name: r'productName',
      type: IsarType.string,
    ),
    r'quantityOnHand': PropertySchema(
      id: 14,
      name: r'quantityOnHand',
      type: IsarType.double,
    ),
    r'reorderQuantity': PropertySchema(
      id: 15,
      name: r'reorderQuantity',
      type: IsarType.double,
    ),
    r'unitOfMeasurementId': PropertySchema(
      id: 16,
      name: r'unitOfMeasurementId',
      type: IsarType.string,
    ),
    r'userAssignedProductId': PropertySchema(
      id: 17,
      name: r'userAssignedProductId',
      type: IsarType.string,
    )
  },
  estimateSize: _logProductDatabaseModelEstimateSize,
  serialize: _logProductDatabaseModelSerialize,
  deserialize: _logProductDatabaseModelDeserialize,
  deserializeProp: _logProductDatabaseModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _logProductDatabaseModelGetId,
  getLinks: _logProductDatabaseModelGetLinks,
  attach: _logProductDatabaseModelAttach,
  version: '3.1.0+1',
);

int _logProductDatabaseModelEstimateSize(
  LogProductDatabaseModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.categoryId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.companyId.length * 3;
  bytesCount += 3 + object.createdByUserId.length * 3;
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.localImagePath;
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
  {
    final value = object.onlineImagePath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.productId.length * 3;
  bytesCount += 3 + object.productName.length * 3;
  bytesCount += 3 + object.unitOfMeasurementId.length * 3;
  {
    final value = object.userAssignedProductId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _logProductDatabaseModelSerialize(
  LogProductDatabaseModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.categoryId);
  writer.writeString(offsets[1], object.companyId);
  writer.writeDouble(offsets[2], object.cost);
  writer.writeString(offsets[3], object.createdByUserId);
  writer.writeDateTime(offsets[4], object.dateCreated);
  writer.writeDateTime(offsets[5], object.dateModified);
  writer.writeString(offsets[6], object.description);
  writer.writeBool(offsets[7], object.isAppWriteSynced);
  writer.writeString(offsets[8], object.localImagePath);
  writer.writeString(offsets[9], object.modifiedByUserId);
  writer.writeString(offsets[10], object.onlineImagePath);
  writer.writeDouble(offsets[11], object.price);
  writer.writeString(offsets[12], object.productId);
  writer.writeString(offsets[13], object.productName);
  writer.writeDouble(offsets[14], object.quantityOnHand);
  writer.writeDouble(offsets[15], object.reorderQuantity);
  writer.writeString(offsets[16], object.unitOfMeasurementId);
  writer.writeString(offsets[17], object.userAssignedProductId);
}

LogProductDatabaseModel _logProductDatabaseModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LogProductDatabaseModel(
    categoryId: reader.readStringOrNull(offsets[0]),
    companyId: reader.readString(offsets[1]),
    cost: reader.readDouble(offsets[2]),
    createdByUserId: reader.readString(offsets[3]),
    dateCreated: reader.readDateTime(offsets[4]),
    dateModified: reader.readDateTimeOrNull(offsets[5]),
    description: reader.readStringOrNull(offsets[6]),
    isAppWriteSynced: reader.readBoolOrNull(offsets[7]),
    localImagePath: reader.readStringOrNull(offsets[8]),
    modifiedByUserId: reader.readStringOrNull(offsets[9]),
    onlineImagePath: reader.readStringOrNull(offsets[10]),
    price: reader.readDouble(offsets[11]),
    productId: reader.readString(offsets[12]),
    productName: reader.readString(offsets[13]),
    quantityOnHand: reader.readDouble(offsets[14]),
    reorderQuantity: reader.readDouble(offsets[15]),
    unitOfMeasurementId: reader.readString(offsets[16]),
    userAssignedProductId: reader.readStringOrNull(offsets[17]),
  );
  object.id = id;
  return object;
}

P _logProductDatabaseModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDouble(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readBoolOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readDouble(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readDouble(offset)) as P;
    case 15:
      return (reader.readDouble(offset)) as P;
    case 16:
      return (reader.readString(offset)) as P;
    case 17:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _logProductDatabaseModelGetId(LogProductDatabaseModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _logProductDatabaseModelGetLinks(
    LogProductDatabaseModel object) {
  return [];
}

void _logProductDatabaseModelAttach(
    IsarCollection<dynamic> col, Id id, LogProductDatabaseModel object) {
  object.id = id;
}

extension LogProductDatabaseModelQueryWhereSort
    on QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QWhere> {
  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LogProductDatabaseModelQueryWhere on QueryBuilder<
    LogProductDatabaseModel, LogProductDatabaseModel, QWhereClause> {
  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

extension LogProductDatabaseModelQueryFilter on QueryBuilder<
    LogProductDatabaseModel, LogProductDatabaseModel, QFilterCondition> {
  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> categoryIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'categoryId',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> categoryIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'categoryId',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> categoryIdEqualTo(
    String? value, {
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> categoryIdGreaterThan(
    String? value, {
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> categoryIdLessThan(
    String? value, {
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> categoryIdBetween(
    String? lower,
    String? upper, {
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> categoryIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> categoryIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categoryId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> companyIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'companyId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> companyIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'companyId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> createdByUserIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> createdByUserIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'createdByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> dateCreatedEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateCreated',
        value: value,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> dateModifiedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateModified',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> dateModifiedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateModified',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> dateModifiedEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateModified',
        value: value,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
          QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
          QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isAppWriteSynced',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isAppWriteSynced',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAppWriteSynced',
        value: value,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> localImagePathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'localImagePath',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> localImagePathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'localImagePath',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> localImagePathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> localImagePathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'localImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> localImagePathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'localImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> localImagePathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'localImagePath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> localImagePathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'localImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> localImagePathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'localImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
          QAfterFilterCondition>
      localImagePathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'localImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
          QAfterFilterCondition>
      localImagePathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'localImagePath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> localImagePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localImagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> localImagePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'localImagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> modifiedByUserIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'modifiedByUserId',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> modifiedByUserIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'modifiedByUserId',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> modifiedByUserIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'modifiedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> modifiedByUserIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'modifiedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> onlineImagePathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'onlineImagePath',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> onlineImagePathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'onlineImagePath',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> onlineImagePathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onlineImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> onlineImagePathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'onlineImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> onlineImagePathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'onlineImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> onlineImagePathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'onlineImagePath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> onlineImagePathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'onlineImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> onlineImagePathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'onlineImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
          QAfterFilterCondition>
      onlineImagePathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'onlineImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
          QAfterFilterCondition>
      onlineImagePathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'onlineImagePath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> onlineImagePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onlineImagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> onlineImagePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'onlineImagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> priceEqualTo(
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> priceGreaterThan(
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> priceLessThan(
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> priceBetween(
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
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

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> productIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> productIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'productId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> productNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> productNameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'productName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> productNameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'productName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> productNameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'productName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> productNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'productName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> productNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'productName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
          QAfterFilterCondition>
      productNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'productName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
          QAfterFilterCondition>
      productNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'productName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> productNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productName',
        value: '',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> productNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'productName',
        value: '',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> quantityOnHandEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quantityOnHand',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> quantityOnHandGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quantityOnHand',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> quantityOnHandLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quantityOnHand',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> quantityOnHandBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quantityOnHand',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> reorderQuantityEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reorderQuantity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> reorderQuantityGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reorderQuantity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> reorderQuantityLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reorderQuantity',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> reorderQuantityBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reorderQuantity',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> unitOfMeasurementIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unitOfMeasurementId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> unitOfMeasurementIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unitOfMeasurementId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> unitOfMeasurementIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unitOfMeasurementId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> unitOfMeasurementIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unitOfMeasurementId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> unitOfMeasurementIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'unitOfMeasurementId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> unitOfMeasurementIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'unitOfMeasurementId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
          QAfterFilterCondition>
      unitOfMeasurementIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'unitOfMeasurementId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
          QAfterFilterCondition>
      unitOfMeasurementIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'unitOfMeasurementId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> unitOfMeasurementIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unitOfMeasurementId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> unitOfMeasurementIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'unitOfMeasurementId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> userAssignedProductIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userAssignedProductId',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> userAssignedProductIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userAssignedProductId',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> userAssignedProductIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userAssignedProductId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> userAssignedProductIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userAssignedProductId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> userAssignedProductIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userAssignedProductId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> userAssignedProductIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userAssignedProductId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> userAssignedProductIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userAssignedProductId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> userAssignedProductIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userAssignedProductId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
          QAfterFilterCondition>
      userAssignedProductIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userAssignedProductId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
          QAfterFilterCondition>
      userAssignedProductIdMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userAssignedProductId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> userAssignedProductIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userAssignedProductId',
        value: '',
      ));
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel,
      QAfterFilterCondition> userAssignedProductIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userAssignedProductId',
        value: '',
      ));
    });
  }
}

extension LogProductDatabaseModelQueryObject on QueryBuilder<
    LogProductDatabaseModel, LogProductDatabaseModel, QFilterCondition> {}

extension LogProductDatabaseModelQueryLinks on QueryBuilder<
    LogProductDatabaseModel, LogProductDatabaseModel, QFilterCondition> {}

extension LogProductDatabaseModelQuerySortBy
    on QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QSortBy> {
  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByCompanyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByCompanyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByCreatedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByUserId', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByCreatedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByUserId', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByDateCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModified', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByDateModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModified', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByIsAppWriteSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByLocalImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localImagePath', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByLocalImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localImagePath', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByModifiedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modifiedByUserId', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByModifiedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modifiedByUserId', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByOnlineImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onlineImagePath', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByOnlineImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onlineImagePath', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByProductName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productName', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByProductNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productName', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByQuantityOnHand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantityOnHand', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByQuantityOnHandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantityOnHand', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByReorderQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reorderQuantity', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByReorderQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reorderQuantity', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByUnitOfMeasurementId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitOfMeasurementId', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByUnitOfMeasurementIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitOfMeasurementId', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByUserAssignedProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userAssignedProductId', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      sortByUserAssignedProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userAssignedProductId', Sort.desc);
    });
  }
}

extension LogProductDatabaseModelQuerySortThenBy on QueryBuilder<
    LogProductDatabaseModel, LogProductDatabaseModel, QSortThenBy> {
  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByCompanyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByCompanyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByCreatedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByUserId', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByCreatedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByUserId', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByDateCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModified', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByDateModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateModified', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByIsAppWriteSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByLocalImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localImagePath', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByLocalImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localImagePath', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByModifiedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modifiedByUserId', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByModifiedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'modifiedByUserId', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByOnlineImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onlineImagePath', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByOnlineImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onlineImagePath', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByProductName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productName', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByProductNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productName', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByQuantityOnHand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantityOnHand', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByQuantityOnHandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantityOnHand', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByReorderQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reorderQuantity', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByReorderQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reorderQuantity', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByUnitOfMeasurementId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitOfMeasurementId', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByUnitOfMeasurementIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitOfMeasurementId', Sort.desc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByUserAssignedProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userAssignedProductId', Sort.asc);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QAfterSortBy>
      thenByUserAssignedProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userAssignedProductId', Sort.desc);
    });
  }
}

extension LogProductDatabaseModelQueryWhereDistinct on QueryBuilder<
    LogProductDatabaseModel, LogProductDatabaseModel, QDistinct> {
  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QDistinct>
      distinctByCategoryId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoryId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QDistinct>
      distinctByCompanyId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'companyId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QDistinct>
      distinctByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cost');
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QDistinct>
      distinctByCreatedByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdByUserId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QDistinct>
      distinctByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateCreated');
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QDistinct>
      distinctByDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateModified');
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QDistinct>
      distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QDistinct>
      distinctByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAppWriteSynced');
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QDistinct>
      distinctByLocalImagePath({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'localImagePath',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QDistinct>
      distinctByModifiedByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'modifiedByUserId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QDistinct>
      distinctByOnlineImagePath({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'onlineImagePath',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QDistinct>
      distinctByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'price');
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QDistinct>
      distinctByProductId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QDistinct>
      distinctByProductName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QDistinct>
      distinctByQuantityOnHand() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantityOnHand');
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QDistinct>
      distinctByReorderQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reorderQuantity');
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QDistinct>
      distinctByUnitOfMeasurementId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unitOfMeasurementId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<LogProductDatabaseModel, LogProductDatabaseModel, QDistinct>
      distinctByUserAssignedProductId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userAssignedProductId',
          caseSensitive: caseSensitive);
    });
  }
}

extension LogProductDatabaseModelQueryProperty on QueryBuilder<
    LogProductDatabaseModel, LogProductDatabaseModel, QQueryProperty> {
  QueryBuilder<LogProductDatabaseModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LogProductDatabaseModel, String?, QQueryOperations>
      categoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoryId');
    });
  }

  QueryBuilder<LogProductDatabaseModel, String, QQueryOperations>
      companyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'companyId');
    });
  }

  QueryBuilder<LogProductDatabaseModel, double, QQueryOperations>
      costProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cost');
    });
  }

  QueryBuilder<LogProductDatabaseModel, String, QQueryOperations>
      createdByUserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdByUserId');
    });
  }

  QueryBuilder<LogProductDatabaseModel, DateTime, QQueryOperations>
      dateCreatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateCreated');
    });
  }

  QueryBuilder<LogProductDatabaseModel, DateTime?, QQueryOperations>
      dateModifiedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateModified');
    });
  }

  QueryBuilder<LogProductDatabaseModel, String?, QQueryOperations>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<LogProductDatabaseModel, bool?, QQueryOperations>
      isAppWriteSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAppWriteSynced');
    });
  }

  QueryBuilder<LogProductDatabaseModel, String?, QQueryOperations>
      localImagePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'localImagePath');
    });
  }

  QueryBuilder<LogProductDatabaseModel, String?, QQueryOperations>
      modifiedByUserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'modifiedByUserId');
    });
  }

  QueryBuilder<LogProductDatabaseModel, String?, QQueryOperations>
      onlineImagePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'onlineImagePath');
    });
  }

  QueryBuilder<LogProductDatabaseModel, double, QQueryOperations>
      priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'price');
    });
  }

  QueryBuilder<LogProductDatabaseModel, String, QQueryOperations>
      productIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productId');
    });
  }

  QueryBuilder<LogProductDatabaseModel, String, QQueryOperations>
      productNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productName');
    });
  }

  QueryBuilder<LogProductDatabaseModel, double, QQueryOperations>
      quantityOnHandProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantityOnHand');
    });
  }

  QueryBuilder<LogProductDatabaseModel, double, QQueryOperations>
      reorderQuantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reorderQuantity');
    });
  }

  QueryBuilder<LogProductDatabaseModel, String, QQueryOperations>
      unitOfMeasurementIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unitOfMeasurementId');
    });
  }

  QueryBuilder<LogProductDatabaseModel, String?, QQueryOperations>
      userAssignedProductIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userAssignedProductId');
    });
  }
}
