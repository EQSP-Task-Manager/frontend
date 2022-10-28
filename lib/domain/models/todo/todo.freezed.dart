// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Todo _$TodoFromJson(Map<String, dynamic> json) {
  return _Todo.fromJson(json);
}

/// @nodoc
mixin _$Todo {
  @JsonKey(name: 'id')
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  @HiveField(2)
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'importance')
  @HiveField(3)
  Importance get importance => throw _privateConstructorUsedError;
  @JsonKey(name: 'deadline')
  @HiveField(4)
  int? get deadline => throw _privateConstructorUsedError;
  @JsonKey(name: 'done')
  @HiveField(5)
  bool get done => throw _privateConstructorUsedError;
  @JsonKey(name: 'color')
  @HiveField(6)
  String? get color => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  @HiveField(7)
  int get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'changed_at')
  @HiveField(8)
  int get changedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_updated_by')
  @HiveField(9)
  String get deviceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tag')
  @HiveField(10)
  Tag? get tag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoCopyWith<Todo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res, Todo>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) String id,
      @JsonKey(name: 'title') @HiveField(1) String title,
      @JsonKey(name: 'description') @HiveField(2) String description,
      @JsonKey(name: 'importance') @HiveField(3) Importance importance,
      @JsonKey(name: 'deadline') @HiveField(4) int? deadline,
      @JsonKey(name: 'done') @HiveField(5) bool done,
      @JsonKey(name: 'color') @HiveField(6) String? color,
      @JsonKey(name: 'created_at') @HiveField(7) int createdAt,
      @JsonKey(name: 'changed_at') @HiveField(8) int changedAt,
      @JsonKey(name: 'last_updated_by') @HiveField(9) String deviceId,
      @JsonKey(name: 'tag') @HiveField(10) Tag? tag});
}

/// @nodoc
class _$TodoCopyWithImpl<$Res, $Val extends Todo>
    implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? importance = null,
    Object? deadline = freezed,
    Object? done = null,
    Object? color = freezed,
    Object? createdAt = null,
    Object? changedAt = null,
    Object? deviceId = null,
    Object? tag = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      importance: null == importance
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as Importance,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as int?,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      changedAt: null == changedAt
          ? _value.changedAt
          : changedAt // ignore: cast_nullable_to_non_nullable
              as int,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$$_TodoCopyWith(_$_Todo value, $Res Function(_$_Todo) then) =
      __$$_TodoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') @HiveField(0) String id,
      @JsonKey(name: 'title') @HiveField(1) String title,
      @JsonKey(name: 'description') @HiveField(2) String description,
      @JsonKey(name: 'importance') @HiveField(3) Importance importance,
      @JsonKey(name: 'deadline') @HiveField(4) int? deadline,
      @JsonKey(name: 'done') @HiveField(5) bool done,
      @JsonKey(name: 'color') @HiveField(6) String? color,
      @JsonKey(name: 'created_at') @HiveField(7) int createdAt,
      @JsonKey(name: 'changed_at') @HiveField(8) int changedAt,
      @JsonKey(name: 'last_updated_by') @HiveField(9) String deviceId,
      @JsonKey(name: 'tag') @HiveField(10) Tag? tag});
}

/// @nodoc
class __$$_TodoCopyWithImpl<$Res> extends _$TodoCopyWithImpl<$Res, _$_Todo>
    implements _$$_TodoCopyWith<$Res> {
  __$$_TodoCopyWithImpl(_$_Todo _value, $Res Function(_$_Todo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? importance = null,
    Object? deadline = freezed,
    Object? done = null,
    Object? color = freezed,
    Object? createdAt = null,
    Object? changedAt = null,
    Object? deviceId = null,
    Object? tag = freezed,
  }) {
    return _then(_$_Todo(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      importance: null == importance
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as Importance,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as int?,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      changedAt: null == changedAt
          ? _value.changedAt
          : changedAt // ignore: cast_nullable_to_non_nullable
              as int,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as Tag?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Todo implements _Todo {
  const _$_Todo(
      {@JsonKey(name: 'id') @HiveField(0) required this.id,
      @JsonKey(name: 'title') @HiveField(1) required this.title,
      @JsonKey(name: 'description') @HiveField(2) required this.description,
      @JsonKey(name: 'importance') @HiveField(3) required this.importance,
      @JsonKey(name: 'deadline') @HiveField(4) required this.deadline,
      @JsonKey(name: 'done') @HiveField(5) required this.done,
      @JsonKey(name: 'color') @HiveField(6) required this.color,
      @JsonKey(name: 'created_at') @HiveField(7) required this.createdAt,
      @JsonKey(name: 'changed_at') @HiveField(8) required this.changedAt,
      @JsonKey(name: 'last_updated_by') @HiveField(9) required this.deviceId,
      @JsonKey(name: 'tag') @HiveField(10) required this.tag});

  factory _$_Todo.fromJson(Map<String, dynamic> json) => _$$_TodoFromJson(json);

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  final String id;
  @override
  @JsonKey(name: 'title')
  @HiveField(1)
  final String title;
  @override
  @JsonKey(name: 'description')
  @HiveField(2)
  final String description;
  @override
  @JsonKey(name: 'importance')
  @HiveField(3)
  final Importance importance;
  @override
  @JsonKey(name: 'deadline')
  @HiveField(4)
  final int? deadline;
  @override
  @JsonKey(name: 'done')
  @HiveField(5)
  final bool done;
  @override
  @JsonKey(name: 'color')
  @HiveField(6)
  final String? color;
  @override
  @JsonKey(name: 'created_at')
  @HiveField(7)
  final int createdAt;
  @override
  @JsonKey(name: 'changed_at')
  @HiveField(8)
  final int changedAt;
  @override
  @JsonKey(name: 'last_updated_by')
  @HiveField(9)
  final String deviceId;
  @override
  @JsonKey(name: 'tag')
  @HiveField(10)
  final Tag? tag;

  @override
  String toString() {
    return 'Todo(id: $id, title: $title, description: $description, importance: $importance, deadline: $deadline, done: $done, color: $color, createdAt: $createdAt, changedAt: $changedAt, deviceId: $deviceId, tag: $tag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Todo &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.importance, importance) ||
                other.importance == importance) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.changedAt, changedAt) ||
                other.changedAt == changedAt) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId) &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, description,
      importance, deadline, done, color, createdAt, changedAt, deviceId, tag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoCopyWith<_$_Todo> get copyWith =>
      __$$_TodoCopyWithImpl<_$_Todo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoToJson(
      this,
    );
  }
}

abstract class _Todo implements Todo {
  const factory _Todo(
      {@JsonKey(name: 'id')
      @HiveField(0)
          required final String id,
      @JsonKey(name: 'title')
      @HiveField(1)
          required final String title,
      @JsonKey(name: 'description')
      @HiveField(2)
          required final String description,
      @JsonKey(name: 'importance')
      @HiveField(3)
          required final Importance importance,
      @JsonKey(name: 'deadline')
      @HiveField(4)
          required final int? deadline,
      @JsonKey(name: 'done')
      @HiveField(5)
          required final bool done,
      @JsonKey(name: 'color')
      @HiveField(6)
          required final String? color,
      @JsonKey(name: 'created_at')
      @HiveField(7)
          required final int createdAt,
      @JsonKey(name: 'changed_at')
      @HiveField(8)
          required final int changedAt,
      @JsonKey(name: 'last_updated_by')
      @HiveField(9)
          required final String deviceId,
      @JsonKey(name: 'tag')
      @HiveField(10)
          required final Tag? tag}) = _$_Todo;

  factory _Todo.fromJson(Map<String, dynamic> json) = _$_Todo.fromJson;

  @override
  @JsonKey(name: 'id')
  @HiveField(0)
  String get id;
  @override
  @JsonKey(name: 'title')
  @HiveField(1)
  String get title;
  @override
  @JsonKey(name: 'description')
  @HiveField(2)
  String get description;
  @override
  @JsonKey(name: 'importance')
  @HiveField(3)
  Importance get importance;
  @override
  @JsonKey(name: 'deadline')
  @HiveField(4)
  int? get deadline;
  @override
  @JsonKey(name: 'done')
  @HiveField(5)
  bool get done;
  @override
  @JsonKey(name: 'color')
  @HiveField(6)
  String? get color;
  @override
  @JsonKey(name: 'created_at')
  @HiveField(7)
  int get createdAt;
  @override
  @JsonKey(name: 'changed_at')
  @HiveField(8)
  int get changedAt;
  @override
  @JsonKey(name: 'last_updated_by')
  @HiveField(9)
  String get deviceId;
  @override
  @JsonKey(name: 'tag')
  @HiveField(10)
  Tag? get tag;
  @override
  @JsonKey(ignore: true)
  _$$_TodoCopyWith<_$_Todo> get copyWith => throw _privateConstructorUsedError;
}
