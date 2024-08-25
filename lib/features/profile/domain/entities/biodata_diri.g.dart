// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biodata_diri.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetBiodataDiriCollection on Isar {
  IsarCollection<BiodataDiri> get biodataDiris => this.collection();
}

const BiodataDiriSchema = CollectionSchema(
  name: r'BiodataDiri',
  id: 8129849325892379384,
  properties: {
    r'email': PropertySchema(
      id: 0,
      name: r'email',
      type: IsarType.string,
    ),
    r'jenisKelamin': PropertySchema(
      id: 1,
      name: r'jenisKelamin',
      type: IsarType.string,
    ),
    r'namaLengkap': PropertySchema(
      id: 2,
      name: r'namaLengkap',
      type: IsarType.string,
    ),
    r'noHp': PropertySchema(
      id: 3,
      name: r'noHp',
      type: IsarType.string,
    ),
    r'pendidikan': PropertySchema(
      id: 4,
      name: r'pendidikan',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 5,
      name: r'status',
      type: IsarType.string,
    ),
    r'tanggalLahir': PropertySchema(
      id: 6,
      name: r'tanggalLahir',
      type: IsarType.string,
    ),
    r'userId': PropertySchema(
      id: 7,
      name: r'userId',
      type: IsarType.long,
    )
  },
  estimateSize: _biodataDiriEstimateSize,
  serialize: _biodataDiriSerialize,
  deserialize: _biodataDiriDeserialize,
  deserializeProp: _biodataDiriDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _biodataDiriGetId,
  getLinks: _biodataDiriGetLinks,
  attach: _biodataDiriAttach,
  version: '3.1.0+1',
);

int _biodataDiriEstimateSize(
  BiodataDiri object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.email;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.jenisKelamin;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.namaLengkap;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.noHp;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.pendidikan;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.status;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.tanggalLahir;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _biodataDiriSerialize(
  BiodataDiri object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.email);
  writer.writeString(offsets[1], object.jenisKelamin);
  writer.writeString(offsets[2], object.namaLengkap);
  writer.writeString(offsets[3], object.noHp);
  writer.writeString(offsets[4], object.pendidikan);
  writer.writeString(offsets[5], object.status);
  writer.writeString(offsets[6], object.tanggalLahir);
  writer.writeLong(offsets[7], object.userId);
}

BiodataDiri _biodataDiriDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = BiodataDiri(
    email: reader.readStringOrNull(offsets[0]),
    id: id,
    jenisKelamin: reader.readStringOrNull(offsets[1]),
    namaLengkap: reader.readStringOrNull(offsets[2]),
    noHp: reader.readStringOrNull(offsets[3]),
    pendidikan: reader.readStringOrNull(offsets[4]),
    status: reader.readStringOrNull(offsets[5]),
    tanggalLahir: reader.readStringOrNull(offsets[6]),
    userId: reader.readLongOrNull(offsets[7]),
  );
  return object;
}

P _biodataDiriDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _biodataDiriGetId(BiodataDiri object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _biodataDiriGetLinks(BiodataDiri object) {
  return [];
}

void _biodataDiriAttach(
    IsarCollection<dynamic> col, Id id, BiodataDiri object) {
  object.id = id;
}

extension BiodataDiriQueryWhereSort
    on QueryBuilder<BiodataDiri, BiodataDiri, QWhere> {
  QueryBuilder<BiodataDiri, BiodataDiri, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension BiodataDiriQueryWhere
    on QueryBuilder<BiodataDiri, BiodataDiri, QWhereClause> {
  QueryBuilder<BiodataDiri, BiodataDiri, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterWhereClause> idBetween(
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

extension BiodataDiriQueryFilter
    on QueryBuilder<BiodataDiri, BiodataDiri, QFilterCondition> {
  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      emailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> emailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      emailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> emailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> emailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> emailContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> emailMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> idGreaterThan(
    Id? value, {
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

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> idLessThan(
    Id? value, {
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

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
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

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      jenisKelaminIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'jenisKelamin',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      jenisKelaminIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'jenisKelamin',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      jenisKelaminEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'jenisKelamin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      jenisKelaminGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'jenisKelamin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      jenisKelaminLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'jenisKelamin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      jenisKelaminBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'jenisKelamin',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      jenisKelaminStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'jenisKelamin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      jenisKelaminEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'jenisKelamin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      jenisKelaminContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'jenisKelamin',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      jenisKelaminMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'jenisKelamin',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      jenisKelaminIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'jenisKelamin',
        value: '',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      jenisKelaminIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'jenisKelamin',
        value: '',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      namaLengkapIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'namaLengkap',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      namaLengkapIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'namaLengkap',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      namaLengkapEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'namaLengkap',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      namaLengkapGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'namaLengkap',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      namaLengkapLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'namaLengkap',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      namaLengkapBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'namaLengkap',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      namaLengkapStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'namaLengkap',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      namaLengkapEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'namaLengkap',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      namaLengkapContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'namaLengkap',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      namaLengkapMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'namaLengkap',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      namaLengkapIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'namaLengkap',
        value: '',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      namaLengkapIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'namaLengkap',
        value: '',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> noHpIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'noHp',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      noHpIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'noHp',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> noHpEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noHp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> noHpGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'noHp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> noHpLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'noHp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> noHpBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'noHp',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> noHpStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'noHp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> noHpEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'noHp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> noHpContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'noHp',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> noHpMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'noHp',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> noHpIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'noHp',
        value: '',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      noHpIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'noHp',
        value: '',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      pendidikanIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pendidikan',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      pendidikanIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pendidikan',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      pendidikanEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pendidikan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      pendidikanGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pendidikan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      pendidikanLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pendidikan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      pendidikanBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pendidikan',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      pendidikanStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pendidikan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      pendidikanEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pendidikan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      pendidikanContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pendidikan',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      pendidikanMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pendidikan',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      pendidikanIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pendidikan',
        value: '',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      pendidikanIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pendidikan',
        value: '',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> statusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      statusIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'status',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> statusEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      statusGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> statusLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> statusBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> statusContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> statusMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      tanggalLahirIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tanggalLahir',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      tanggalLahirIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tanggalLahir',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      tanggalLahirEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tanggalLahir',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      tanggalLahirGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tanggalLahir',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      tanggalLahirLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tanggalLahir',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      tanggalLahirBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tanggalLahir',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      tanggalLahirStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tanggalLahir',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      tanggalLahirEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tanggalLahir',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      tanggalLahirContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tanggalLahir',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      tanggalLahirMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tanggalLahir',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      tanggalLahirIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tanggalLahir',
        value: '',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      tanggalLahirIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tanggalLahir',
        value: '',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> userIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      userIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> userIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition>
      userIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> userIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userId',
        value: value,
      ));
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterFilterCondition> userIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension BiodataDiriQueryObject
    on QueryBuilder<BiodataDiri, BiodataDiri, QFilterCondition> {}

extension BiodataDiriQueryLinks
    on QueryBuilder<BiodataDiri, BiodataDiri, QFilterCondition> {}

extension BiodataDiriQuerySortBy
    on QueryBuilder<BiodataDiri, BiodataDiri, QSortBy> {
  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> sortByJenisKelamin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jenisKelamin', Sort.asc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy>
      sortByJenisKelaminDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jenisKelamin', Sort.desc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> sortByNamaLengkap() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'namaLengkap', Sort.asc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> sortByNamaLengkapDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'namaLengkap', Sort.desc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> sortByNoHp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noHp', Sort.asc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> sortByNoHpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noHp', Sort.desc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> sortByPendidikan() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pendidikan', Sort.asc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> sortByPendidikanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pendidikan', Sort.desc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> sortByTanggalLahir() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tanggalLahir', Sort.asc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy>
      sortByTanggalLahirDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tanggalLahir', Sort.desc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension BiodataDiriQuerySortThenBy
    on QueryBuilder<BiodataDiri, BiodataDiri, QSortThenBy> {
  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> thenByJenisKelamin() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jenisKelamin', Sort.asc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy>
      thenByJenisKelaminDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'jenisKelamin', Sort.desc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> thenByNamaLengkap() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'namaLengkap', Sort.asc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> thenByNamaLengkapDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'namaLengkap', Sort.desc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> thenByNoHp() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noHp', Sort.asc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> thenByNoHpDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'noHp', Sort.desc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> thenByPendidikan() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pendidikan', Sort.asc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> thenByPendidikanDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pendidikan', Sort.desc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> thenByTanggalLahir() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tanggalLahir', Sort.asc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy>
      thenByTanggalLahirDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tanggalLahir', Sort.desc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QAfterSortBy> thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension BiodataDiriQueryWhereDistinct
    on QueryBuilder<BiodataDiri, BiodataDiri, QDistinct> {
  QueryBuilder<BiodataDiri, BiodataDiri, QDistinct> distinctByEmail(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QDistinct> distinctByJenisKelamin(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'jenisKelamin', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QDistinct> distinctByNamaLengkap(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'namaLengkap', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QDistinct> distinctByNoHp(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'noHp', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QDistinct> distinctByPendidikan(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pendidikan', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QDistinct> distinctByTanggalLahir(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tanggalLahir', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BiodataDiri, BiodataDiri, QDistinct> distinctByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId');
    });
  }
}

extension BiodataDiriQueryProperty
    on QueryBuilder<BiodataDiri, BiodataDiri, QQueryProperty> {
  QueryBuilder<BiodataDiri, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<BiodataDiri, String?, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<BiodataDiri, String?, QQueryOperations> jenisKelaminProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'jenisKelamin');
    });
  }

  QueryBuilder<BiodataDiri, String?, QQueryOperations> namaLengkapProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'namaLengkap');
    });
  }

  QueryBuilder<BiodataDiri, String?, QQueryOperations> noHpProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'noHp');
    });
  }

  QueryBuilder<BiodataDiri, String?, QQueryOperations> pendidikanProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pendidikan');
    });
  }

  QueryBuilder<BiodataDiri, String?, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<BiodataDiri, String?, QQueryOperations> tanggalLahirProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tanggalLahir');
    });
  }

  QueryBuilder<BiodataDiri, int?, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }
}
