// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "by", defaultValue: "")
  String get author => throw _privateConstructorUsedError; // -----
  @JsonKey(name: "time", fromJson: secondsFromEpochToDateTime)
  DateTime get createdAt => throw _privateConstructorUsedError; // -----
  ItemType get type => throw _privateConstructorUsedError;
  @JsonKey(name: "deleted")
  bool? get isDeleted => throw _privateConstructorUsedError;
  @JsonKey(name: "dead")
  bool? get isDead => throw _privateConstructorUsedError;
  @JsonKey(name: "poll")
  int? get pollId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "text")
  String? get body => throw _privateConstructorUsedError;
  @JsonKey(name: "kids")
  List<int>? get childrenIds => throw _privateConstructorUsedError;
  @JsonKey(name: "parts")
  List<int>? get pollOptIds => throw _privateConstructorUsedError;
  @JsonKey(name: "parent")
  int? get parentId => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  @JsonKey(name: "descendants")
  int? get descendantCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "by", defaultValue: "") String author,
      @JsonKey(name: "time", fromJson: secondsFromEpochToDateTime)
      DateTime createdAt,
      ItemType type,
      @JsonKey(name: "deleted") bool? isDeleted,
      @JsonKey(name: "dead") bool? isDead,
      @JsonKey(name: "poll") int? pollId,
      String? title,
      @JsonKey(name: "text") String? body,
      @JsonKey(name: "kids") List<int>? childrenIds,
      @JsonKey(name: "parts") List<int>? pollOptIds,
      @JsonKey(name: "parent") int? parentId,
      String? url,
      int? score,
      @JsonKey(name: "descendants") int? descendantCount});
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? createdAt = null,
    Object? type = null,
    Object? isDeleted = freezed,
    Object? isDead = freezed,
    Object? pollId = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? childrenIds = freezed,
    Object? pollOptIds = freezed,
    Object? parentId = freezed,
    Object? url = freezed,
    Object? score = freezed,
    Object? descendantCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ItemType,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDead: freezed == isDead
          ? _value.isDead
          : isDead // ignore: cast_nullable_to_non_nullable
              as bool?,
      pollId: freezed == pollId
          ? _value.pollId
          : pollId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      childrenIds: freezed == childrenIds
          ? _value.childrenIds
          : childrenIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      pollOptIds: freezed == pollOptIds
          ? _value.pollOptIds
          : pollOptIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      descendantCount: freezed == descendantCount
          ? _value.descendantCount
          : descendantCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "by", defaultValue: "") String author,
      @JsonKey(name: "time", fromJson: secondsFromEpochToDateTime)
      DateTime createdAt,
      ItemType type,
      @JsonKey(name: "deleted") bool? isDeleted,
      @JsonKey(name: "dead") bool? isDead,
      @JsonKey(name: "poll") int? pollId,
      String? title,
      @JsonKey(name: "text") String? body,
      @JsonKey(name: "kids") List<int>? childrenIds,
      @JsonKey(name: "parts") List<int>? pollOptIds,
      @JsonKey(name: "parent") int? parentId,
      String? url,
      int? score,
      @JsonKey(name: "descendants") int? descendantCount});
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? createdAt = null,
    Object? type = null,
    Object? isDeleted = freezed,
    Object? isDead = freezed,
    Object? pollId = freezed,
    Object? title = freezed,
    Object? body = freezed,
    Object? childrenIds = freezed,
    Object? pollOptIds = freezed,
    Object? parentId = freezed,
    Object? url = freezed,
    Object? score = freezed,
    Object? descendantCount = freezed,
  }) {
    return _then(_$ItemImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ItemType,
      isDeleted: freezed == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDead: freezed == isDead
          ? _value.isDead
          : isDead // ignore: cast_nullable_to_non_nullable
              as bool?,
      pollId: freezed == pollId
          ? _value.pollId
          : pollId // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      childrenIds: freezed == childrenIds
          ? _value._childrenIds
          : childrenIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      pollOptIds: freezed == pollOptIds
          ? _value._pollOptIds
          : pollOptIds // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      score: freezed == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int?,
      descendantCount: freezed == descendantCount
          ? _value.descendantCount
          : descendantCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl extends _Item {
  const _$ItemImpl(
      {required this.id,
      @JsonKey(name: "by", defaultValue: "") required this.author,
      @JsonKey(name: "time", fromJson: secondsFromEpochToDateTime)
      required this.createdAt,
      required this.type,
      @JsonKey(name: "deleted") this.isDeleted,
      @JsonKey(name: "dead") this.isDead,
      @JsonKey(name: "poll") this.pollId,
      this.title,
      @JsonKey(name: "text") this.body,
      @JsonKey(name: "kids") final List<int>? childrenIds,
      @JsonKey(name: "parts") final List<int>? pollOptIds,
      @JsonKey(name: "parent") this.parentId,
      this.url,
      this.score,
      @JsonKey(name: "descendants") this.descendantCount})
      : _childrenIds = childrenIds,
        _pollOptIds = pollOptIds,
        super._();

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "by", defaultValue: "")
  final String author;
// -----
  @override
  @JsonKey(name: "time", fromJson: secondsFromEpochToDateTime)
  final DateTime createdAt;
// -----
  @override
  final ItemType type;
  @override
  @JsonKey(name: "deleted")
  final bool? isDeleted;
  @override
  @JsonKey(name: "dead")
  final bool? isDead;
  @override
  @JsonKey(name: "poll")
  final int? pollId;
  @override
  final String? title;
  @override
  @JsonKey(name: "text")
  final String? body;
  final List<int>? _childrenIds;
  @override
  @JsonKey(name: "kids")
  List<int>? get childrenIds {
    final value = _childrenIds;
    if (value == null) return null;
    if (_childrenIds is EqualUnmodifiableListView) return _childrenIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<int>? _pollOptIds;
  @override
  @JsonKey(name: "parts")
  List<int>? get pollOptIds {
    final value = _pollOptIds;
    if (value == null) return null;
    if (_pollOptIds is EqualUnmodifiableListView) return _pollOptIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "parent")
  final int? parentId;
  @override
  final String? url;
  @override
  final int? score;
  @override
  @JsonKey(name: "descendants")
  final int? descendantCount;

  @override
  String toString() {
    return 'Item(id: $id, author: $author, createdAt: $createdAt, type: $type, isDeleted: $isDeleted, isDead: $isDead, pollId: $pollId, title: $title, body: $body, childrenIds: $childrenIds, pollOptIds: $pollOptIds, parentId: $parentId, url: $url, score: $score, descendantCount: $descendantCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted) &&
            (identical(other.isDead, isDead) || other.isDead == isDead) &&
            (identical(other.pollId, pollId) || other.pollId == pollId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            const DeepCollectionEquality()
                .equals(other._childrenIds, _childrenIds) &&
            const DeepCollectionEquality()
                .equals(other._pollOptIds, _pollOptIds) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.descendantCount, descendantCount) ||
                other.descendantCount == descendantCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      author,
      createdAt,
      type,
      isDeleted,
      isDead,
      pollId,
      title,
      body,
      const DeepCollectionEquality().hash(_childrenIds),
      const DeepCollectionEquality().hash(_pollOptIds),
      parentId,
      url,
      score,
      descendantCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item extends Item {
  const factory _Item(
      {required final int id,
      @JsonKey(name: "by", defaultValue: "") required final String author,
      @JsonKey(name: "time", fromJson: secondsFromEpochToDateTime)
      required final DateTime createdAt,
      required final ItemType type,
      @JsonKey(name: "deleted") final bool? isDeleted,
      @JsonKey(name: "dead") final bool? isDead,
      @JsonKey(name: "poll") final int? pollId,
      final String? title,
      @JsonKey(name: "text") final String? body,
      @JsonKey(name: "kids") final List<int>? childrenIds,
      @JsonKey(name: "parts") final List<int>? pollOptIds,
      @JsonKey(name: "parent") final int? parentId,
      final String? url,
      final int? score,
      @JsonKey(name: "descendants") final int? descendantCount}) = _$ItemImpl;
  const _Item._() : super._();

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "by", defaultValue: "")
  String get author;
  @override // -----
  @JsonKey(name: "time", fromJson: secondsFromEpochToDateTime)
  DateTime get createdAt;
  @override // -----
  ItemType get type;
  @override
  @JsonKey(name: "deleted")
  bool? get isDeleted;
  @override
  @JsonKey(name: "dead")
  bool? get isDead;
  @override
  @JsonKey(name: "poll")
  int? get pollId;
  @override
  String? get title;
  @override
  @JsonKey(name: "text")
  String? get body;
  @override
  @JsonKey(name: "kids")
  List<int>? get childrenIds;
  @override
  @JsonKey(name: "parts")
  List<int>? get pollOptIds;
  @override
  @JsonKey(name: "parent")
  int? get parentId;
  @override
  String? get url;
  @override
  int? get score;
  @override
  @JsonKey(name: "descendants")
  int? get descendantCount;
  @override
  @JsonKey(ignore: true)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
