// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_database_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetProductDatabaseModelCollection on Isar {
  IsarCollection<ProductDatabaseModel> get productDatabaseModels =>
      this.collection();
}

const ProductDatabaseModelSchema = CollectionSchema(
  name: r'ProductDatabaseModel',
  id: -2069923927146959234,
  properties: {
    r'categoryId': PropertySchema(
      id: 0,
      name: r'categoryId',
      type: IsarType.string,
    ),
    r'cost': PropertySchema(
      id: 1,
      name: r'cost',
      type: IsarType.double,
    ),
    r'createdByUserId': PropertySchema(
      id: 2,
      name: r'createdByUserId',
      type: IsarType.string,
    ),
    r'dateCreated': PropertySchema(
      id: 3,
      name: r'dateCreated',
      type: IsarType.dateTime,
    ),
    r'description': PropertySchema(
      id: 4,
      name: r'description',
      type: IsarType.string,
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
    r'localImagePath': PropertySchema(
      id: 8,
      name: r'localImagePath',
      type: IsarType.string,
    ),
    r'onlineImagePath': PropertySchema(
      id: 9,
      name: r'onlineImagePath',
      type: IsarType.string,
    ),
    r'price': PropertySchema(
      id: 10,
      name: r'price',
      type: IsarType.double,
    ),
    r'productId': PropertySchema(
      id: 11,
      name: r'productId',
      type: IsarType.string,
    ),
    r'productName': PropertySchema(
      id: 12,
      name: r'productName',
      type: IsarType.string,
    ),
    r'quantityOnHand': PropertySchema(
      id: 13,
      name: r'quantityOnHand',
      type: IsarType.double,
    ),
    r'reorderQuantity': PropertySchema(
      id: 14,
      name: r'reorderQuantity',
      type: IsarType.double,
    ),
    r'unitOfMeasurementId': PropertySchema(
      id: 15,
      name: r'unitOfMeasurementId',
      type: IsarType.string,
    ),
    r'userAssignedProductId': PropertySchema(
      id: 16,
      name: r'userAssignedProductId',
      type: IsarType.string,
    ),
    r'userId': PropertySchema(
      id: 17,
      name: r'userId',
      type: IsarType.string,
    )
  },
  estimateSize: _productDatabaseModelEstimateSize,
  serialize: _productDatabaseModelSerialize,
  deserialize: _productDatabaseModelDeserialize,
  deserializeProp: _productDatabaseModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _productDatabaseModelGetId,
  getLinks: _productDatabaseModelGetLinks,
  attach: _productDatabaseModelAttach,
  version: '3.1.0+1',
);

int _productDatabaseModelEstimateSize(
  ProductDatabaseModel object,
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
  bytesCount += 3 + object.createdByUserId.length * 3;
  {
    final value = object.description;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.lastModifiedByUserId;
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
  bytesCount += 3 + object.userId.length * 3;
  return bytesCount;
}

void _productDatabaseModelSerialize(
  ProductDatabaseModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.categoryId);
  writer.writeDouble(offsets[1], object.cost);
  writer.writeString(offsets[2], object.createdByUserId);
  writer.writeDateTime(offsets[3], object.dateCreated);
  writer.writeString(offsets[4], object.description);
  writer.writeBool(offsets[5], object.isAppWriteSynced);
  writer.writeDateTime(offsets[6], object.lastDateModified);
  writer.writeString(offsets[7], object.lastModifiedByUserId);
  writer.writeString(offsets[8], object.localImagePath);
  writer.writeString(offsets[9], object.onlineImagePath);
  writer.writeDouble(offsets[10], object.price);
  writer.writeString(offsets[11], object.productId);
  writer.writeString(offsets[12], object.productName);
  writer.writeDouble(offsets[13], object.quantityOnHand);
  writer.writeDouble(offsets[14], object.reorderQuantity);
  writer.writeString(offsets[15], object.unitOfMeasurementId);
  writer.writeString(offsets[16], object.userAssignedProductId);
  writer.writeString(offsets[17], object.userId);
}

ProductDatabaseModel _productDatabaseModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProductDatabaseModel();
  object.categoryId = reader.readStringOrNull(offsets[0]);
  object.cost = reader.readDouble(offsets[1]);
  object.createdByUserId = reader.readString(offsets[2]);
  object.dateCreated = reader.readDateTime(offsets[3]);
  object.description = reader.readStringOrNull(offsets[4]);
  object.id = id;
  object.isAppWriteSynced = reader.readBoolOrNull(offsets[5]);
  object.lastDateModified = reader.readDateTimeOrNull(offsets[6]);
  object.lastModifiedByUserId = reader.readStringOrNull(offsets[7]);
  object.localImagePath = reader.readStringOrNull(offsets[8]);
  object.onlineImagePath = reader.readStringOrNull(offsets[9]);
  object.price = reader.readDouble(offsets[10]);
  object.productId = reader.readString(offsets[11]);
  object.productName = reader.readString(offsets[12]);
  object.quantityOnHand = reader.readDouble(offsets[13]);
  object.reorderQuantity = reader.readDouble(offsets[14]);
  object.unitOfMeasurementId = reader.readString(offsets[15]);
  object.userAssignedProductId = reader.readStringOrNull(offsets[16]);
  object.userId = reader.readString(offsets[17]);
  return object;
}

P _productDatabaseModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readBoolOrNull(offset)) as P;
    case 6:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readDouble(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readDouble(offset)) as P;
    case 14:
      return (reader.readDouble(offset)) as P;
    case 15:
      return (reader.readString(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _productDatabaseModelGetId(ProductDatabaseModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _productDatabaseModelGetLinks(
    ProductDatabaseModel object) {
  return [];
}

void _productDatabaseModelAttach(
    IsarCollection<dynamic> col, Id id, ProductDatabaseModel object) {
  object.id = id;
}

extension ProductDatabaseModelQueryWhereSort
    on QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QWhere> {
  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ProductDatabaseModelQueryWhere
    on QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QWhereClause> {
  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterWhereClause>
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterWhereClause>
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

extension ProductDatabaseModelQueryFilter on QueryBuilder<ProductDatabaseModel,
    ProductDatabaseModel, QFilterCondition> {
  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> categoryIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'categoryId',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> categoryIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'categoryId',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> categoryIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categoryId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> categoryIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categoryId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> createdByUserIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> createdByUserIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'createdByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> dateCreatedEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateCreated',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isAppWriteSynced',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isAppWriteSynced',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAppWriteSynced',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> lastDateModifiedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastDateModified',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> lastDateModifiedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastDateModified',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> lastDateModifiedEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastDateModified',
        value: value,
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastModifiedByUserId',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastModifiedByUserId',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastModifiedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastModifiedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> localImagePathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'localImagePath',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> localImagePathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'localImagePath',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> localImagePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localImagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> localImagePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'localImagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> onlineImagePathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'onlineImagePath',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> onlineImagePathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'onlineImagePath',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> onlineImagePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'onlineImagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> onlineImagePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'onlineImagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> productIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> productIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'productId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> productNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productName',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> productNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'productName',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> unitOfMeasurementIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unitOfMeasurementId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> unitOfMeasurementIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'unitOfMeasurementId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> userAssignedProductIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userAssignedProductId',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> userAssignedProductIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userAssignedProductId',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
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

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> userAssignedProductIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userAssignedProductId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> userAssignedProductIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userAssignedProductId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> userIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> userIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> userIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> userIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> userIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> userIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
          QAfterFilterCondition>
      userIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
          QAfterFilterCondition>
      userIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> userIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel,
      QAfterFilterCondition> userIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userId',
        value: '',
      ));
    });
  }
}

extension ProductDatabaseModelQueryObject on QueryBuilder<ProductDatabaseModel,
    ProductDatabaseModel, QFilterCondition> {}

extension ProductDatabaseModelQueryLinks on QueryBuilder<ProductDatabaseModel,
    ProductDatabaseModel, QFilterCondition> {}

extension ProductDatabaseModelQuerySortBy
    on QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QSortBy> {
  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByCreatedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByUserId', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByCreatedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByUserId', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByDateCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByIsAppWriteSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByLastDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDateModified', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByLastDateModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDateModified', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByLastModifiedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedByUserId', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByLastModifiedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedByUserId', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByLocalImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localImagePath', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByLocalImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localImagePath', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByOnlineImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onlineImagePath', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByOnlineImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onlineImagePath', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByProductName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productName', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByProductNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productName', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByQuantityOnHand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantityOnHand', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByQuantityOnHandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantityOnHand', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByReorderQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reorderQuantity', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByReorderQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reorderQuantity', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByUnitOfMeasurementId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitOfMeasurementId', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByUnitOfMeasurementIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitOfMeasurementId', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByUserAssignedProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userAssignedProductId', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByUserAssignedProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userAssignedProductId', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension ProductDatabaseModelQuerySortThenBy
    on QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QSortThenBy> {
  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByCategoryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByCategoryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'categoryId', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByCostDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cost', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByCreatedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByUserId', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByCreatedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByUserId', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByDateCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByIsAppWriteSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByLastDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDateModified', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByLastDateModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDateModified', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByLastModifiedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedByUserId', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByLastModifiedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedByUserId', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByLocalImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localImagePath', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByLocalImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localImagePath', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByOnlineImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onlineImagePath', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByOnlineImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'onlineImagePath', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByPriceDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'price', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByProductName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productName', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByProductNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productName', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByQuantityOnHand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantityOnHand', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByQuantityOnHandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantityOnHand', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByReorderQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reorderQuantity', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByReorderQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reorderQuantity', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByUnitOfMeasurementId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitOfMeasurementId', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByUnitOfMeasurementIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'unitOfMeasurementId', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByUserAssignedProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userAssignedProductId', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByUserAssignedProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userAssignedProductId', Sort.desc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QAfterSortBy>
      thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension ProductDatabaseModelQueryWhereDistinct
    on QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QDistinct> {
  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QDistinct>
      distinctByCategoryId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categoryId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QDistinct>
      distinctByCost() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cost');
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QDistinct>
      distinctByCreatedByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdByUserId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QDistinct>
      distinctByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateCreated');
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QDistinct>
      distinctByDescription({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QDistinct>
      distinctByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAppWriteSynced');
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QDistinct>
      distinctByLastDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastDateModified');
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QDistinct>
      distinctByLastModifiedByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastModifiedByUserId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QDistinct>
      distinctByLocalImagePath({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'localImagePath',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QDistinct>
      distinctByOnlineImagePath({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'onlineImagePath',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QDistinct>
      distinctByPrice() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'price');
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QDistinct>
      distinctByProductId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QDistinct>
      distinctByProductName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QDistinct>
      distinctByQuantityOnHand() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantityOnHand');
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QDistinct>
      distinctByReorderQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reorderQuantity');
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QDistinct>
      distinctByUnitOfMeasurementId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'unitOfMeasurementId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QDistinct>
      distinctByUserAssignedProductId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userAssignedProductId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProductDatabaseModel, ProductDatabaseModel, QDistinct>
      distinctByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId', caseSensitive: caseSensitive);
    });
  }
}

extension ProductDatabaseModelQueryProperty on QueryBuilder<
    ProductDatabaseModel, ProductDatabaseModel, QQueryProperty> {
  QueryBuilder<ProductDatabaseModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ProductDatabaseModel, String?, QQueryOperations>
      categoryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categoryId');
    });
  }

  QueryBuilder<ProductDatabaseModel, double, QQueryOperations> costProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cost');
    });
  }

  QueryBuilder<ProductDatabaseModel, String, QQueryOperations>
      createdByUserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdByUserId');
    });
  }

  QueryBuilder<ProductDatabaseModel, DateTime, QQueryOperations>
      dateCreatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateCreated');
    });
  }

  QueryBuilder<ProductDatabaseModel, String?, QQueryOperations>
      descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<ProductDatabaseModel, bool?, QQueryOperations>
      isAppWriteSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAppWriteSynced');
    });
  }

  QueryBuilder<ProductDatabaseModel, DateTime?, QQueryOperations>
      lastDateModifiedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastDateModified');
    });
  }

  QueryBuilder<ProductDatabaseModel, String?, QQueryOperations>
      lastModifiedByUserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastModifiedByUserId');
    });
  }

  QueryBuilder<ProductDatabaseModel, String?, QQueryOperations>
      localImagePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'localImagePath');
    });
  }

  QueryBuilder<ProductDatabaseModel, String?, QQueryOperations>
      onlineImagePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'onlineImagePath');
    });
  }

  QueryBuilder<ProductDatabaseModel, double, QQueryOperations> priceProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'price');
    });
  }

  QueryBuilder<ProductDatabaseModel, String, QQueryOperations>
      productIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productId');
    });
  }

  QueryBuilder<ProductDatabaseModel, String, QQueryOperations>
      productNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productName');
    });
  }

  QueryBuilder<ProductDatabaseModel, double, QQueryOperations>
      quantityOnHandProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantityOnHand');
    });
  }

  QueryBuilder<ProductDatabaseModel, double, QQueryOperations>
      reorderQuantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reorderQuantity');
    });
  }

  QueryBuilder<ProductDatabaseModel, String, QQueryOperations>
      unitOfMeasurementIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'unitOfMeasurementId');
    });
  }

  QueryBuilder<ProductDatabaseModel, String?, QQueryOperations>
      userAssignedProductIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userAssignedProductId');
    });
  }

  QueryBuilder<ProductDatabaseModel, String, QQueryOperations>
      userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }
}
