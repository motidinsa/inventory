// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deleted_product_database_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetDeletedProductDatabaseModelCollection on Isar {
  IsarCollection<DeletedProductDatabaseModel>
      get deletedProductDatabaseModels => this.collection();
}

const DeletedProductDatabaseModelSchema = CollectionSchema(
  name: r'DeletedProductDatabaseModel',
  id: 1334188350302011835,
  properties: {
    r'addedFrom': PropertySchema(
      id: 0,
      name: r'addedFrom',
      type: IsarType.string,
    ),
    r'deletedByUserId': PropertySchema(
      id: 1,
      name: r'deletedByUserId',
      type: IsarType.string,
    ),
    r'deletedDate': PropertySchema(
      id: 2,
      name: r'deletedDate',
      type: IsarType.dateTime,
    ),
    r'isAppWriteSynced': PropertySchema(
      id: 3,
      name: r'isAppWriteSynced',
      type: IsarType.bool,
    ),
    r'productId': PropertySchema(
      id: 4,
      name: r'productId',
      type: IsarType.string,
    )
  },
  estimateSize: _deletedProductDatabaseModelEstimateSize,
  serialize: _deletedProductDatabaseModelSerialize,
  deserialize: _deletedProductDatabaseModelDeserialize,
  deserializeProp: _deletedProductDatabaseModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _deletedProductDatabaseModelGetId,
  getLinks: _deletedProductDatabaseModelGetLinks,
  attach: _deletedProductDatabaseModelAttach,
  version: '3.1.0+1',
);

int _deletedProductDatabaseModelEstimateSize(
  DeletedProductDatabaseModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.addedFrom.length * 3;
  bytesCount += 3 + object.deletedByUserId.length * 3;
  bytesCount += 3 + object.productId.length * 3;
  return bytesCount;
}

void _deletedProductDatabaseModelSerialize(
  DeletedProductDatabaseModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.addedFrom);
  writer.writeString(offsets[1], object.deletedByUserId);
  writer.writeDateTime(offsets[2], object.deletedDate);
  writer.writeBool(offsets[3], object.isAppWriteSynced);
  writer.writeString(offsets[4], object.productId);
}

DeletedProductDatabaseModel _deletedProductDatabaseModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = DeletedProductDatabaseModel(
    addedFrom: reader.readString(offsets[0]),
    deletedByUserId: reader.readString(offsets[1]),
    deletedDate: reader.readDateTime(offsets[2]),
    isAppWriteSynced: reader.readBoolOrNull(offsets[3]),
    productId: reader.readString(offsets[4]),
  );
  object.id = id;
  return object;
}

P _deletedProductDatabaseModelDeserializeProp<P>(
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
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readBoolOrNull(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _deletedProductDatabaseModelGetId(DeletedProductDatabaseModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _deletedProductDatabaseModelGetLinks(
    DeletedProductDatabaseModel object) {
  return [];
}

void _deletedProductDatabaseModelAttach(
    IsarCollection<dynamic> col, Id id, DeletedProductDatabaseModel object) {
  object.id = id;
}

extension DeletedProductDatabaseModelQueryWhereSort on QueryBuilder<
    DeletedProductDatabaseModel, DeletedProductDatabaseModel, QWhere> {
  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension DeletedProductDatabaseModelQueryWhere on QueryBuilder<
    DeletedProductDatabaseModel, DeletedProductDatabaseModel, QWhereClause> {
  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
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

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
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

extension DeletedProductDatabaseModelQueryFilter on QueryBuilder<
    DeletedProductDatabaseModel,
    DeletedProductDatabaseModel,
    QFilterCondition> {
  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> addedFromEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> addedFromGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'addedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> addedFromLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'addedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> addedFromBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'addedFrom',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> addedFromStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'addedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> addedFromEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'addedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
          QAfterFilterCondition>
      addedFromContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'addedFrom',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
          QAfterFilterCondition>
      addedFromMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'addedFrom',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> addedFromIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'addedFrom',
        value: '',
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> addedFromIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'addedFrom',
        value: '',
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> deletedByUserIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deletedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> deletedByUserIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deletedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> deletedByUserIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deletedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> deletedByUserIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deletedByUserId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> deletedByUserIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'deletedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> deletedByUserIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'deletedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
          QAfterFilterCondition>
      deletedByUserIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'deletedByUserId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
          QAfterFilterCondition>
      deletedByUserIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'deletedByUserId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> deletedByUserIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deletedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> deletedByUserIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'deletedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> deletedDateEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'deletedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> deletedDateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'deletedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> deletedDateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'deletedDate',
        value: value,
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> deletedDateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'deletedDate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
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

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
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

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
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

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isAppWriteSynced',
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isAppWriteSynced',
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAppWriteSynced',
        value: value,
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
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

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
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

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
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

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
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

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
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

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
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

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
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

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
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

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> productIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'productId',
        value: '',
      ));
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterFilterCondition> productIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'productId',
        value: '',
      ));
    });
  }
}

extension DeletedProductDatabaseModelQueryObject on QueryBuilder<
    DeletedProductDatabaseModel,
    DeletedProductDatabaseModel,
    QFilterCondition> {}

extension DeletedProductDatabaseModelQueryLinks on QueryBuilder<
    DeletedProductDatabaseModel,
    DeletedProductDatabaseModel,
    QFilterCondition> {}

extension DeletedProductDatabaseModelQuerySortBy on QueryBuilder<
    DeletedProductDatabaseModel, DeletedProductDatabaseModel, QSortBy> {
  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterSortBy> sortByAddedFrom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedFrom', Sort.asc);
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterSortBy> sortByAddedFromDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedFrom', Sort.desc);
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterSortBy> sortByDeletedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedByUserId', Sort.asc);
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterSortBy> sortByDeletedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedByUserId', Sort.desc);
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterSortBy> sortByDeletedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedDate', Sort.asc);
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterSortBy> sortByDeletedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedDate', Sort.desc);
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterSortBy> sortByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.asc);
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterSortBy> sortByIsAppWriteSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.desc);
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterSortBy> sortByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterSortBy> sortByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }
}

extension DeletedProductDatabaseModelQuerySortThenBy on QueryBuilder<
    DeletedProductDatabaseModel, DeletedProductDatabaseModel, QSortThenBy> {
  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterSortBy> thenByAddedFrom() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedFrom', Sort.asc);
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterSortBy> thenByAddedFromDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'addedFrom', Sort.desc);
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterSortBy> thenByDeletedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedByUserId', Sort.asc);
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterSortBy> thenByDeletedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedByUserId', Sort.desc);
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterSortBy> thenByDeletedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedDate', Sort.asc);
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterSortBy> thenByDeletedDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'deletedDate', Sort.desc);
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterSortBy> thenByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.asc);
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterSortBy> thenByIsAppWriteSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.desc);
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterSortBy> thenByProductId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.asc);
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QAfterSortBy> thenByProductIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'productId', Sort.desc);
    });
  }
}

extension DeletedProductDatabaseModelQueryWhereDistinct on QueryBuilder<
    DeletedProductDatabaseModel, DeletedProductDatabaseModel, QDistinct> {
  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QDistinct> distinctByAddedFrom({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'addedFrom', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QDistinct> distinctByDeletedByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deletedByUserId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QDistinct> distinctByDeletedDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'deletedDate');
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QDistinct> distinctByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAppWriteSynced');
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DeletedProductDatabaseModel,
      QDistinct> distinctByProductId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'productId', caseSensitive: caseSensitive);
    });
  }
}

extension DeletedProductDatabaseModelQueryProperty on QueryBuilder<
    DeletedProductDatabaseModel, DeletedProductDatabaseModel, QQueryProperty> {
  QueryBuilder<DeletedProductDatabaseModel, int, QQueryOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, String, QQueryOperations>
      addedFromProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'addedFrom');
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, String, QQueryOperations>
      deletedByUserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deletedByUserId');
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, DateTime, QQueryOperations>
      deletedDateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'deletedDate');
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, bool?, QQueryOperations>
      isAppWriteSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAppWriteSynced');
    });
  }

  QueryBuilder<DeletedProductDatabaseModel, String, QQueryOperations>
      productIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'productId');
    });
  }
}
