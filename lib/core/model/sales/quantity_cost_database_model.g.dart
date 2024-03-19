// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quantity_cost_database_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetQuantityCostDatabaseModelCollection on Isar {
  IsarCollection<QuantityCostDatabaseModel> get quantityCostDatabaseModels =>
      this.collection();
}

const QuantityCostDatabaseModelSchema = CollectionSchema(
  name: r'QuantityCostDatabaseModel',
  id: 78822661780524906,
  properties: {
    r'purchaseId': PropertySchema(
      id: 0,
      name: r'purchaseId',
      type: IsarType.string,
    ),
    r'quantity': PropertySchema(
      id: 1,
      name: r'quantity',
      type: IsarType.double,
    ),
    r'salesId': PropertySchema(
      id: 2,
      name: r'salesId',
      type: IsarType.string,
    )
  },
  estimateSize: _quantityCostDatabaseModelEstimateSize,
  serialize: _quantityCostDatabaseModelSerialize,
  deserialize: _quantityCostDatabaseModelDeserialize,
  deserializeProp: _quantityCostDatabaseModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _quantityCostDatabaseModelGetId,
  getLinks: _quantityCostDatabaseModelGetLinks,
  attach: _quantityCostDatabaseModelAttach,
  version: '3.1.0+1',
);

int _quantityCostDatabaseModelEstimateSize(
  QuantityCostDatabaseModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.purchaseId.length * 3;
  bytesCount += 3 + object.salesId.length * 3;
  return bytesCount;
}

void _quantityCostDatabaseModelSerialize(
  QuantityCostDatabaseModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.purchaseId);
  writer.writeDouble(offsets[1], object.quantity);
  writer.writeString(offsets[2], object.salesId);
}

QuantityCostDatabaseModel _quantityCostDatabaseModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = QuantityCostDatabaseModel();
  object.id = id;
  object.purchaseId = reader.readString(offsets[0]);
  object.quantity = reader.readDouble(offsets[1]);
  object.salesId = reader.readString(offsets[2]);
  return object;
}

P _quantityCostDatabaseModelDeserializeProp<P>(
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
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _quantityCostDatabaseModelGetId(QuantityCostDatabaseModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _quantityCostDatabaseModelGetLinks(
    QuantityCostDatabaseModel object) {
  return [];
}

void _quantityCostDatabaseModelAttach(
    IsarCollection<dynamic> col, Id id, QuantityCostDatabaseModel object) {
  object.id = id;
}

extension QuantityCostDatabaseModelQueryWhereSort on QueryBuilder<
    QuantityCostDatabaseModel, QuantityCostDatabaseModel, QWhere> {
  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension QuantityCostDatabaseModelQueryWhere on QueryBuilder<
    QuantityCostDatabaseModel, QuantityCostDatabaseModel, QWhereClause> {
  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
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

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
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

extension QuantityCostDatabaseModelQueryFilter on QueryBuilder<
    QuantityCostDatabaseModel, QuantityCostDatabaseModel, QFilterCondition> {
  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
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

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
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

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
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

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
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

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
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

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
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

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
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

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
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

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
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

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
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

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
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

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterFilterCondition> purchaseIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'purchaseId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterFilterCondition> purchaseIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'purchaseId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
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

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
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

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
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

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
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

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterFilterCondition> salesIdEqualTo(
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

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterFilterCondition> salesIdGreaterThan(
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

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterFilterCondition> salesIdLessThan(
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

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterFilterCondition> salesIdBetween(
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

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterFilterCondition> salesIdStartsWith(
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

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterFilterCondition> salesIdEndsWith(
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

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
          QAfterFilterCondition>
      salesIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'salesId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
          QAfterFilterCondition>
      salesIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'salesId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterFilterCondition> salesIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'salesId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterFilterCondition> salesIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'salesId',
        value: '',
      ));
    });
  }
}

extension QuantityCostDatabaseModelQueryObject on QueryBuilder<
    QuantityCostDatabaseModel, QuantityCostDatabaseModel, QFilterCondition> {}

extension QuantityCostDatabaseModelQueryLinks on QueryBuilder<
    QuantityCostDatabaseModel, QuantityCostDatabaseModel, QFilterCondition> {}

extension QuantityCostDatabaseModelQuerySortBy on QueryBuilder<
    QuantityCostDatabaseModel, QuantityCostDatabaseModel, QSortBy> {
  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterSortBy> sortByPurchaseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseId', Sort.asc);
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterSortBy> sortByPurchaseIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseId', Sort.desc);
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterSortBy> sortByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterSortBy> sortByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterSortBy> sortBySalesId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesId', Sort.asc);
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterSortBy> sortBySalesIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesId', Sort.desc);
    });
  }
}

extension QuantityCostDatabaseModelQuerySortThenBy on QueryBuilder<
    QuantityCostDatabaseModel, QuantityCostDatabaseModel, QSortThenBy> {
  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterSortBy> thenByPurchaseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseId', Sort.asc);
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterSortBy> thenByPurchaseIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'purchaseId', Sort.desc);
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterSortBy> thenByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.asc);
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterSortBy> thenByQuantityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quantity', Sort.desc);
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterSortBy> thenBySalesId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesId', Sort.asc);
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel,
      QAfterSortBy> thenBySalesIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'salesId', Sort.desc);
    });
  }
}

extension QuantityCostDatabaseModelQueryWhereDistinct on QueryBuilder<
    QuantityCostDatabaseModel, QuantityCostDatabaseModel, QDistinct> {
  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel, QDistinct>
      distinctByPurchaseId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'purchaseId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel, QDistinct>
      distinctByQuantity() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quantity');
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, QuantityCostDatabaseModel, QDistinct>
      distinctBySalesId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'salesId', caseSensitive: caseSensitive);
    });
  }
}

extension QuantityCostDatabaseModelQueryProperty on QueryBuilder<
    QuantityCostDatabaseModel, QuantityCostDatabaseModel, QQueryProperty> {
  QueryBuilder<QuantityCostDatabaseModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, String, QQueryOperations>
      purchaseIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'purchaseId');
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, double, QQueryOperations>
      quantityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quantity');
    });
  }

  QueryBuilder<QuantityCostDatabaseModel, String, QQueryOperations>
      salesIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'salesId');
    });
  }
}
