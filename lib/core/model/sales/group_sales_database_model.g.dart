// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_sales_database_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetGroupSalesDatabaseModelCollection on Isar {
  IsarCollection<GroupSalesDatabaseModel> get groupSalesDatabaseModels =>
      this.collection();
}

const GroupSalesDatabaseModelSchema = CollectionSchema(
  name: r'GroupSalesDatabaseModel',
  id: 3737067288170343603,
  properties: {
    r'discount': PropertySchema(
      id: 0,
      name: r'discount',
      type: IsarType.double,
    ),
    r'groupSalesId': PropertySchema(
      id: 1,
      name: r'groupSalesId',
      type: IsarType.string,
    )
  },
  estimateSize: _groupSalesDatabaseModelEstimateSize,
  serialize: _groupSalesDatabaseModelSerialize,
  deserialize: _groupSalesDatabaseModelDeserialize,
  deserializeProp: _groupSalesDatabaseModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _groupSalesDatabaseModelGetId,
  getLinks: _groupSalesDatabaseModelGetLinks,
  attach: _groupSalesDatabaseModelAttach,
  version: '3.1.8',
);

int _groupSalesDatabaseModelEstimateSize(
  GroupSalesDatabaseModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.groupSalesId.length * 3;
  return bytesCount;
}

void _groupSalesDatabaseModelSerialize(
  GroupSalesDatabaseModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.discount);
  writer.writeString(offsets[1], object.groupSalesId);
}

GroupSalesDatabaseModel _groupSalesDatabaseModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = GroupSalesDatabaseModel(
    discount: reader.readDouble(offsets[0]),
    groupSalesId: reader.readString(offsets[1]),
  );
  object.id = id;
  return object;
}

P _groupSalesDatabaseModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _groupSalesDatabaseModelGetId(GroupSalesDatabaseModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _groupSalesDatabaseModelGetLinks(
    GroupSalesDatabaseModel object) {
  return [];
}

void _groupSalesDatabaseModelAttach(
    IsarCollection<dynamic> col, Id id, GroupSalesDatabaseModel object) {
  object.id = id;
}

extension GroupSalesDatabaseModelQueryWhereSort
    on QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel, QWhere> {
  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension GroupSalesDatabaseModelQueryWhere on QueryBuilder<
    GroupSalesDatabaseModel, GroupSalesDatabaseModel, QWhereClause> {
  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel,
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

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel,
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

extension GroupSalesDatabaseModelQueryFilter on QueryBuilder<
    GroupSalesDatabaseModel, GroupSalesDatabaseModel, QFilterCondition> {
  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel,
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

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel,
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

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel,
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

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel,
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

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel,
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

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel,
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

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel,
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

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel,
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

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel,
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

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel,
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

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel,
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

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel,
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

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel,
      QAfterFilterCondition> groupSalesIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'groupSalesId',
        value: '',
      ));
    });
  }

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel,
      QAfterFilterCondition> groupSalesIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'groupSalesId',
        value: '',
      ));
    });
  }

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel,
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

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel,
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

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel,
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
}

extension GroupSalesDatabaseModelQueryObject on QueryBuilder<
    GroupSalesDatabaseModel, GroupSalesDatabaseModel, QFilterCondition> {}

extension GroupSalesDatabaseModelQueryLinks on QueryBuilder<
    GroupSalesDatabaseModel, GroupSalesDatabaseModel, QFilterCondition> {}

extension GroupSalesDatabaseModelQuerySortBy
    on QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel, QSortBy> {
  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel, QAfterSortBy>
      sortByDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discount', Sort.asc);
    });
  }

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel, QAfterSortBy>
      sortByDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discount', Sort.desc);
    });
  }

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel, QAfterSortBy>
      sortByGroupSalesId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupSalesId', Sort.asc);
    });
  }

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel, QAfterSortBy>
      sortByGroupSalesIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupSalesId', Sort.desc);
    });
  }
}

extension GroupSalesDatabaseModelQuerySortThenBy on QueryBuilder<
    GroupSalesDatabaseModel, GroupSalesDatabaseModel, QSortThenBy> {
  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel, QAfterSortBy>
      thenByDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discount', Sort.asc);
    });
  }

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel, QAfterSortBy>
      thenByDiscountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'discount', Sort.desc);
    });
  }

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel, QAfterSortBy>
      thenByGroupSalesId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupSalesId', Sort.asc);
    });
  }

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel, QAfterSortBy>
      thenByGroupSalesIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'groupSalesId', Sort.desc);
    });
  }

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension GroupSalesDatabaseModelQueryWhereDistinct on QueryBuilder<
    GroupSalesDatabaseModel, GroupSalesDatabaseModel, QDistinct> {
  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel, QDistinct>
      distinctByDiscount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'discount');
    });
  }

  QueryBuilder<GroupSalesDatabaseModel, GroupSalesDatabaseModel, QDistinct>
      distinctByGroupSalesId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'groupSalesId', caseSensitive: caseSensitive);
    });
  }
}

extension GroupSalesDatabaseModelQueryProperty on QueryBuilder<
    GroupSalesDatabaseModel, GroupSalesDatabaseModel, QQueryProperty> {
  QueryBuilder<GroupSalesDatabaseModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<GroupSalesDatabaseModel, double, QQueryOperations>
      discountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'discount');
    });
  }

  QueryBuilder<GroupSalesDatabaseModel, String, QQueryOperations>
      groupSalesIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'groupSalesId');
    });
  }
}
