// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloader_task_collection.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetDownloaderTaskCollectionCollection on Isar {
  IsarCollection<int, DownloaderTaskCollection> get downloaderTaskCollections =>
      this.collection();
}

const DownloaderTaskCollectionSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'DownloaderTaskCollection',
    idName: 'mediaId',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'tag',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'url',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'status',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'type',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'filename',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'progress',
        type: IsarType.double,
      ),
      IsarPropertySchema(
        name: 'uriData',
        type: IsarType.string,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, DownloaderTaskCollection>(
    serialize: serializeDownloaderTaskCollection,
    deserialize: deserializeDownloaderTaskCollection,
    deserializeProperty: deserializeDownloaderTaskCollectionProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeDownloaderTaskCollection(
    IsarWriter writer, DownloaderTaskCollection object) {
  {
    final value = object.tag;
    if (value == null) {
      IsarCore.writeNull(writer, 1);
    } else {
      IsarCore.writeString(writer, 1, value);
    }
  }
  {
    final value = object.url;
    if (value == null) {
      IsarCore.writeNull(writer, 2);
    } else {
      IsarCore.writeString(writer, 2, value);
    }
  }
  {
    final value = object.status;
    if (value == null) {
      IsarCore.writeNull(writer, 3);
    } else {
      IsarCore.writeString(writer, 3, value);
    }
  }
  {
    final value = object.type;
    if (value == null) {
      IsarCore.writeNull(writer, 4);
    } else {
      IsarCore.writeString(writer, 4, value);
    }
  }
  {
    final value = object.filename;
    if (value == null) {
      IsarCore.writeNull(writer, 5);
    } else {
      IsarCore.writeString(writer, 5, value);
    }
  }
  IsarCore.writeDouble(writer, 6, object.progress ?? double.nan);
  {
    final value = object.uriData;
    if (value == null) {
      IsarCore.writeNull(writer, 7);
    } else {
      IsarCore.writeString(writer, 7, value);
    }
  }
  return object.mediaId;
}

@isarProtected
DownloaderTaskCollection deserializeDownloaderTaskCollection(
    IsarReader reader) {
  final object = DownloaderTaskCollection();
  object.mediaId = IsarCore.readId(reader);
  object.tag = IsarCore.readString(reader, 1);
  object.url = IsarCore.readString(reader, 2);
  object.status = IsarCore.readString(reader, 3);
  object.type = IsarCore.readString(reader, 4);
  object.filename = IsarCore.readString(reader, 5);
  {
    final value = IsarCore.readDouble(reader, 6);
    if (value.isNaN) {
      object.progress = null;
    } else {
      object.progress = value;
    }
  }
  object.uriData = IsarCore.readString(reader, 7);
  return object;
}

@isarProtected
dynamic deserializeDownloaderTaskCollectionProp(
    IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1);
    case 2:
      return IsarCore.readString(reader, 2);
    case 3:
      return IsarCore.readString(reader, 3);
    case 4:
      return IsarCore.readString(reader, 4);
    case 5:
      return IsarCore.readString(reader, 5);
    case 6:
      {
        final value = IsarCore.readDouble(reader, 6);
        if (value.isNaN) {
          return null;
        } else {
          return value;
        }
      }
    case 7:
      return IsarCore.readString(reader, 7);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _DownloaderTaskCollectionUpdate {
  bool call({
    required int mediaId,
    String? tag,
    String? url,
    String? status,
    String? type,
    String? filename,
    double? progress,
    String? uriData,
  });
}

class _DownloaderTaskCollectionUpdateImpl
    implements _DownloaderTaskCollectionUpdate {
  const _DownloaderTaskCollectionUpdateImpl(this.collection);

  final IsarCollection<int, DownloaderTaskCollection> collection;

  @override
  bool call({
    required int mediaId,
    Object? tag = ignore,
    Object? url = ignore,
    Object? status = ignore,
    Object? type = ignore,
    Object? filename = ignore,
    Object? progress = ignore,
    Object? uriData = ignore,
  }) {
    return collection.updateProperties([
          mediaId
        ], {
          if (tag != ignore) 1: tag as String?,
          if (url != ignore) 2: url as String?,
          if (status != ignore) 3: status as String?,
          if (type != ignore) 4: type as String?,
          if (filename != ignore) 5: filename as String?,
          if (progress != ignore) 6: progress as double?,
          if (uriData != ignore) 7: uriData as String?,
        }) >
        0;
  }
}

sealed class _DownloaderTaskCollectionUpdateAll {
  int call({
    required List<int> mediaId,
    String? tag,
    String? url,
    String? status,
    String? type,
    String? filename,
    double? progress,
    String? uriData,
  });
}

class _DownloaderTaskCollectionUpdateAllImpl
    implements _DownloaderTaskCollectionUpdateAll {
  const _DownloaderTaskCollectionUpdateAllImpl(this.collection);

  final IsarCollection<int, DownloaderTaskCollection> collection;

  @override
  int call({
    required List<int> mediaId,
    Object? tag = ignore,
    Object? url = ignore,
    Object? status = ignore,
    Object? type = ignore,
    Object? filename = ignore,
    Object? progress = ignore,
    Object? uriData = ignore,
  }) {
    return collection.updateProperties(mediaId, {
      if (tag != ignore) 1: tag as String?,
      if (url != ignore) 2: url as String?,
      if (status != ignore) 3: status as String?,
      if (type != ignore) 4: type as String?,
      if (filename != ignore) 5: filename as String?,
      if (progress != ignore) 6: progress as double?,
      if (uriData != ignore) 7: uriData as String?,
    });
  }
}

extension DownloaderTaskCollectionUpdate
    on IsarCollection<int, DownloaderTaskCollection> {
  _DownloaderTaskCollectionUpdate get update =>
      _DownloaderTaskCollectionUpdateImpl(this);

  _DownloaderTaskCollectionUpdateAll get updateAll =>
      _DownloaderTaskCollectionUpdateAllImpl(this);
}

sealed class _DownloaderTaskCollectionQueryUpdate {
  int call({
    String? tag,
    String? url,
    String? status,
    String? type,
    String? filename,
    double? progress,
    String? uriData,
  });
}

class _DownloaderTaskCollectionQueryUpdateImpl
    implements _DownloaderTaskCollectionQueryUpdate {
  const _DownloaderTaskCollectionQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<DownloaderTaskCollection> query;
  final int? limit;

  @override
  int call({
    Object? tag = ignore,
    Object? url = ignore,
    Object? status = ignore,
    Object? type = ignore,
    Object? filename = ignore,
    Object? progress = ignore,
    Object? uriData = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (tag != ignore) 1: tag as String?,
      if (url != ignore) 2: url as String?,
      if (status != ignore) 3: status as String?,
      if (type != ignore) 4: type as String?,
      if (filename != ignore) 5: filename as String?,
      if (progress != ignore) 6: progress as double?,
      if (uriData != ignore) 7: uriData as String?,
    });
  }
}

extension DownloaderTaskCollectionQueryUpdate
    on IsarQuery<DownloaderTaskCollection> {
  _DownloaderTaskCollectionQueryUpdate get updateFirst =>
      _DownloaderTaskCollectionQueryUpdateImpl(this, limit: 1);

  _DownloaderTaskCollectionQueryUpdate get updateAll =>
      _DownloaderTaskCollectionQueryUpdateImpl(this);
}

class _DownloaderTaskCollectionQueryBuilderUpdateImpl
    implements _DownloaderTaskCollectionQueryUpdate {
  const _DownloaderTaskCollectionQueryBuilderUpdateImpl(this.query,
      {this.limit});

  final QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QOperations> query;
  final int? limit;

  @override
  int call({
    Object? tag = ignore,
    Object? url = ignore,
    Object? status = ignore,
    Object? type = ignore,
    Object? filename = ignore,
    Object? progress = ignore,
    Object? uriData = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (tag != ignore) 1: tag as String?,
        if (url != ignore) 2: url as String?,
        if (status != ignore) 3: status as String?,
        if (type != ignore) 4: type as String?,
        if (filename != ignore) 5: filename as String?,
        if (progress != ignore) 6: progress as double?,
        if (uriData != ignore) 7: uriData as String?,
      });
    } finally {
      q.close();
    }
  }
}

extension DownloaderTaskCollectionQueryBuilderUpdate on QueryBuilder<
    DownloaderTaskCollection, DownloaderTaskCollection, QOperations> {
  _DownloaderTaskCollectionQueryUpdate get updateFirst =>
      _DownloaderTaskCollectionQueryBuilderUpdateImpl(this, limit: 1);

  _DownloaderTaskCollectionQueryUpdate get updateAll =>
      _DownloaderTaskCollectionQueryBuilderUpdateImpl(this);
}

extension DownloaderTaskCollectionQueryFilter on QueryBuilder<
    DownloaderTaskCollection, DownloaderTaskCollection, QFilterCondition> {
  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> mediaIdEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> mediaIdGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> mediaIdGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> mediaIdLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> mediaIdLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> mediaIdBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> tagIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> tagIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 1));
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> tagEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> tagGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> tagGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> tagLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> tagLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> tagBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> tagStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> tagEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
          QAfterFilterCondition>
      tagContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
          QAfterFilterCondition>
      tagMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> tagIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> tagIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> urlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> urlIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 2));
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> urlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> urlGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> urlGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> urlLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> urlLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> urlBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
          QAfterFilterCondition>
      urlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
          QAfterFilterCondition>
      urlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> statusIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> statusIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 3));
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> statusEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> statusGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> statusGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> statusLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> statusLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> statusBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 3,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
          QAfterFilterCondition>
      statusContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 3,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
          QAfterFilterCondition>
      statusMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 3,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 3,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> typeIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 4));
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> typeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> typeGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> typeGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> typeLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> typeLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> typeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 4,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
          QAfterFilterCondition>
      typeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 4,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
          QAfterFilterCondition>
      typeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 4,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 4,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> filenameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> filenameIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 5));
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> filenameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> filenameGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> filenameGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> filenameLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> filenameLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> filenameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 5,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> filenameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> filenameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
          QAfterFilterCondition>
      filenameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 5,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
          QAfterFilterCondition>
      filenameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 5,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> filenameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> filenameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 5,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> progressIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> progressIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 6));
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> progressEqualTo(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 6,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> progressGreaterThan(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 6,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> progressGreaterThanOrEqualTo(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 6,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> progressLessThan(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 6,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> progressLessThanOrEqualTo(
    double? value, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 6,
          value: value,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> progressBetween(
    double? lower,
    double? upper, {
    double epsilon = Filter.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 6,
          lower: lower,
          upper: upper,
          epsilon: epsilon,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> uriDataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const IsNullCondition(property: 7));
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> uriDataIsNotNull() {
    return QueryBuilder.apply(not(), (query) {
      return query.addFilterCondition(const IsNullCondition(property: 7));
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> uriDataEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> uriDataGreaterThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> uriDataGreaterThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> uriDataLessThan(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> uriDataLessThanOrEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> uriDataBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 7,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> uriDataStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> uriDataEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
          QAfterFilterCondition>
      uriDataContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 7,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
          QAfterFilterCondition>
      uriDataMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 7,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> uriDataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 7,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterFilterCondition> uriDataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 7,
          value: '',
        ),
      );
    });
  }
}

extension DownloaderTaskCollectionQueryObject on QueryBuilder<
    DownloaderTaskCollection, DownloaderTaskCollection, QFilterCondition> {}

extension DownloaderTaskCollectionQuerySortBy on QueryBuilder<
    DownloaderTaskCollection, DownloaderTaskCollection, QSortBy> {
  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      sortByMediaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      sortByMediaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      sortByTag({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      sortByTagDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      sortByUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      sortByUrlDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      sortByStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      sortByStatusDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        3,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      sortByType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      sortByTypeDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        4,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      sortByFilename({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      sortByFilenameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        5,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      sortByProgress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      sortByProgressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      sortByUriData({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        7,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      sortByUriDataDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        7,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }
}

extension DownloaderTaskCollectionQuerySortThenBy on QueryBuilder<
    DownloaderTaskCollection, DownloaderTaskCollection, QSortThenBy> {
  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      thenByMediaId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      thenByMediaIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      thenByTag({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      thenByTagDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      thenByUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      thenByUrlDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      thenByStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      thenByStatusDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      thenByType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      thenByTypeDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(4, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      thenByFilename({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      thenByFilenameDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(5, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      thenByProgress() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      thenByProgressDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(6, sort: Sort.desc);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      thenByUriData({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection, QAfterSortBy>
      thenByUriDataDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(7, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }
}

extension DownloaderTaskCollectionQueryWhereDistinct on QueryBuilder<
    DownloaderTaskCollection, DownloaderTaskCollection, QDistinct> {
  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterDistinct> distinctByTag({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterDistinct> distinctByUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterDistinct> distinctByStatus({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterDistinct> distinctByType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(4, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterDistinct> distinctByFilename({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(5, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterDistinct> distinctByProgress() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(6);
    });
  }

  QueryBuilder<DownloaderTaskCollection, DownloaderTaskCollection,
      QAfterDistinct> distinctByUriData({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(7, caseSensitive: caseSensitive);
    });
  }
}

extension DownloaderTaskCollectionQueryProperty1 on QueryBuilder<
    DownloaderTaskCollection, DownloaderTaskCollection, QProperty> {
  QueryBuilder<DownloaderTaskCollection, int, QAfterProperty>
      mediaIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<DownloaderTaskCollection, String?, QAfterProperty>
      tagProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<DownloaderTaskCollection, String?, QAfterProperty>
      urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<DownloaderTaskCollection, String?, QAfterProperty>
      statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<DownloaderTaskCollection, String?, QAfterProperty>
      typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<DownloaderTaskCollection, String?, QAfterProperty>
      filenameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<DownloaderTaskCollection, double?, QAfterProperty>
      progressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<DownloaderTaskCollection, String?, QAfterProperty>
      uriDataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }
}

extension DownloaderTaskCollectionQueryProperty2<R>
    on QueryBuilder<DownloaderTaskCollection, R, QAfterProperty> {
  QueryBuilder<DownloaderTaskCollection, (R, int), QAfterProperty>
      mediaIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<DownloaderTaskCollection, (R, String?), QAfterProperty>
      tagProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<DownloaderTaskCollection, (R, String?), QAfterProperty>
      urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<DownloaderTaskCollection, (R, String?), QAfterProperty>
      statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<DownloaderTaskCollection, (R, String?), QAfterProperty>
      typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<DownloaderTaskCollection, (R, String?), QAfterProperty>
      filenameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<DownloaderTaskCollection, (R, double?), QAfterProperty>
      progressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<DownloaderTaskCollection, (R, String?), QAfterProperty>
      uriDataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }
}

extension DownloaderTaskCollectionQueryProperty3<R1, R2>
    on QueryBuilder<DownloaderTaskCollection, (R1, R2), QAfterProperty> {
  QueryBuilder<DownloaderTaskCollection, (R1, R2, int), QOperations>
      mediaIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<DownloaderTaskCollection, (R1, R2, String?), QOperations>
      tagProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<DownloaderTaskCollection, (R1, R2, String?), QOperations>
      urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<DownloaderTaskCollection, (R1, R2, String?), QOperations>
      statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }

  QueryBuilder<DownloaderTaskCollection, (R1, R2, String?), QOperations>
      typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(4);
    });
  }

  QueryBuilder<DownloaderTaskCollection, (R1, R2, String?), QOperations>
      filenameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(5);
    });
  }

  QueryBuilder<DownloaderTaskCollection, (R1, R2, double?), QOperations>
      progressProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(6);
    });
  }

  QueryBuilder<DownloaderTaskCollection, (R1, R2, String?), QOperations>
      uriDataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(7);
    });
  }
}
