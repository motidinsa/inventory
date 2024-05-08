// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_of_measurement_database_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUnitOfMeasurementDatabaseModelCollection on Isar {
  IsarCollection<UnitOfMeasurementDatabaseModel>
      get unitOfMeasurementDatabaseModels => this.collection();
}

const UnitOfMeasurementDatabaseModelSchema = CollectionSchema(
  name: r'UnitOfMeasurementDatabaseModel',
  id: 4452331368249909062,
  properties: {
    r'companyId': PropertySchema(
      id: 0,
      name: r'companyId',
      type: IsarType.string,
    ),
    r'createdByUserId': PropertySchema(
      id: 1,
      name: r'createdByUserId',
      type: IsarType.string,
    ),
    r'dateCreated': PropertySchema(
      id: 2,
      name: r'dateCreated',
      type: IsarType.dateTime,
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
    r'name': PropertySchema(
      id: 6,
      name: r'name',
      type: IsarType.string,
    ),
    r'uomId': PropertySchema(
      id: 7,
      name: r'uomId',
      type: IsarType.string,
    )
  },
  estimateSize: _unitOfMeasurementDatabaseModelEstimateSize,
  serialize: _unitOfMeasurementDatabaseModelSerialize,
  deserialize: _unitOfMeasurementDatabaseModelDeserialize,
  deserializeProp: _unitOfMeasurementDatabaseModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _unitOfMeasurementDatabaseModelGetId,
  getLinks: _unitOfMeasurementDatabaseModelGetLinks,
  attach: _unitOfMeasurementDatabaseModelAttach,
  version: '3.1.0+1',
);

int _unitOfMeasurementDatabaseModelEstimateSize(
  UnitOfMeasurementDatabaseModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.companyId.length * 3;
  bytesCount += 3 + object.createdByUserId.length * 3;
  {
    final value = object.lastModifiedByUserId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.uomId.length * 3;
  return bytesCount;
}

void _unitOfMeasurementDatabaseModelSerialize(
  UnitOfMeasurementDatabaseModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.companyId);
  writer.writeString(offsets[1], object.createdByUserId);
  writer.writeDateTime(offsets[2], object.dateCreated);
  writer.writeBool(offsets[3], object.isAppWriteSynced);
  writer.writeDateTime(offsets[4], object.lastDateModified);
  writer.writeString(offsets[5], object.lastModifiedByUserId);
  writer.writeString(offsets[6], object.name);
  writer.writeString(offsets[7], object.uomId);
}

UnitOfMeasurementDatabaseModel _unitOfMeasurementDatabaseModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UnitOfMeasurementDatabaseModel(
    companyId: reader.readString(offsets[0]),
    createdByUserId: reader.readString(offsets[1]),
    dateCreated: reader.readDateTime(offsets[2]),
    isAppWriteSynced: reader.readBoolOrNull(offsets[3]),
    lastDateModified: reader.readDateTimeOrNull(offsets[4]),
    lastModifiedByUserId: reader.readStringOrNull(offsets[5]),
    name: reader.readString(offsets[6]),
    uomId: reader.readString(offsets[7]),
  );
  object.id = id;
  return object;
}

P _unitOfMeasurementDatabaseModelDeserializeProp<P>(
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
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _unitOfMeasurementDatabaseModelGetId(UnitOfMeasurementDatabaseModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _unitOfMeasurementDatabaseModelGetLinks(
    UnitOfMeasurementDatabaseModel object) {
  return [];
}

void _unitOfMeasurementDatabaseModelAttach(
    IsarCollection<dynamic> col, Id id, UnitOfMeasurementDatabaseModel object) {
  object.id = id;
}

extension UnitOfMeasurementDatabaseModelQueryWhereSort on QueryBuilder<
    UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel, QWhere> {
  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UnitOfMeasurementDatabaseModelQueryWhere on QueryBuilder<
    UnitOfMeasurementDatabaseModel,
    UnitOfMeasurementDatabaseModel,
    QWhereClause> {
  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

extension UnitOfMeasurementDatabaseModelQueryFilter on QueryBuilder<
    UnitOfMeasurementDatabaseModel,
    UnitOfMeasurementDatabaseModel,
    QFilterCondition> {
  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> companyIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'companyId',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> companyIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'companyId',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> createdByUserIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> createdByUserIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'createdByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> dateCreatedEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateCreated',
        value: value,
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isAppWriteSynced',
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isAppWriteSynced',
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> isAppWriteSyncedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isAppWriteSynced',
        value: value,
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> lastDateModifiedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastDateModified',
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> lastDateModifiedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastDateModified',
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> lastDateModifiedEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastDateModified',
        value: value,
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastModifiedByUserId',
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastModifiedByUserId',
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
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

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastModifiedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> lastModifiedByUserIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastModifiedByUserId',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
          QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
          QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> uomIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uomId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> uomIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'uomId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> uomIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'uomId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> uomIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'uomId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> uomIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'uomId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> uomIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'uomId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
          QAfterFilterCondition>
      uomIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'uomId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
          QAfterFilterCondition>
      uomIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'uomId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> uomIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'uomId',
        value: '',
      ));
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterFilterCondition> uomIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'uomId',
        value: '',
      ));
    });
  }
}

extension UnitOfMeasurementDatabaseModelQueryObject on QueryBuilder<
    UnitOfMeasurementDatabaseModel,
    UnitOfMeasurementDatabaseModel,
    QFilterCondition> {}

extension UnitOfMeasurementDatabaseModelQueryLinks on QueryBuilder<
    UnitOfMeasurementDatabaseModel,
    UnitOfMeasurementDatabaseModel,
    QFilterCondition> {}

extension UnitOfMeasurementDatabaseModelQuerySortBy on QueryBuilder<
    UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel, QSortBy> {
  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> sortByCompanyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.asc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> sortByCompanyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.desc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> sortByCreatedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByUserId', Sort.asc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> sortByCreatedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByUserId', Sort.desc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> sortByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.asc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> sortByDateCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.desc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> sortByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.asc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> sortByIsAppWriteSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.desc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> sortByLastDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDateModified', Sort.asc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> sortByLastDateModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDateModified', Sort.desc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> sortByLastModifiedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedByUserId', Sort.asc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> sortByLastModifiedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedByUserId', Sort.desc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> sortByUomId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uomId', Sort.asc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> sortByUomIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uomId', Sort.desc);
    });
  }
}

extension UnitOfMeasurementDatabaseModelQuerySortThenBy on QueryBuilder<
    UnitOfMeasurementDatabaseModel,
    UnitOfMeasurementDatabaseModel,
    QSortThenBy> {
  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> thenByCompanyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.asc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> thenByCompanyIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'companyId', Sort.desc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> thenByCreatedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByUserId', Sort.asc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> thenByCreatedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdByUserId', Sort.desc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> thenByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.asc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> thenByDateCreatedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateCreated', Sort.desc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> thenByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.asc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> thenByIsAppWriteSyncedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isAppWriteSynced', Sort.desc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> thenByLastDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDateModified', Sort.asc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> thenByLastDateModifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastDateModified', Sort.desc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> thenByLastModifiedByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedByUserId', Sort.asc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> thenByLastModifiedByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastModifiedByUserId', Sort.desc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> thenByUomId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uomId', Sort.asc);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QAfterSortBy> thenByUomIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'uomId', Sort.desc);
    });
  }
}

extension UnitOfMeasurementDatabaseModelQueryWhereDistinct on QueryBuilder<
    UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel, QDistinct> {
  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QDistinct> distinctByCompanyId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'companyId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QDistinct> distinctByCreatedByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdByUserId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QDistinct> distinctByDateCreated() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateCreated');
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QDistinct> distinctByIsAppWriteSynced() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isAppWriteSynced');
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QDistinct> distinctByLastDateModified() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastDateModified');
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QDistinct> distinctByLastModifiedByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastModifiedByUserId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QDistinct> distinctByName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, UnitOfMeasurementDatabaseModel,
      QDistinct> distinctByUomId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'uomId', caseSensitive: caseSensitive);
    });
  }
}

extension UnitOfMeasurementDatabaseModelQueryProperty on QueryBuilder<
    UnitOfMeasurementDatabaseModel,
    UnitOfMeasurementDatabaseModel,
    QQueryProperty> {
  QueryBuilder<UnitOfMeasurementDatabaseModel, int, QQueryOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, String, QQueryOperations>
      companyIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'companyId');
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, String, QQueryOperations>
      createdByUserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdByUserId');
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, DateTime, QQueryOperations>
      dateCreatedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateCreated');
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, bool?, QQueryOperations>
      isAppWriteSyncedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isAppWriteSynced');
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, DateTime?, QQueryOperations>
      lastDateModifiedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastDateModified');
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, String?, QQueryOperations>
      lastModifiedByUserIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastModifiedByUserId');
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, String, QQueryOperations>
      nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<UnitOfMeasurementDatabaseModel, String, QQueryOperations>
      uomIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'uomId');
    });
  }
}
