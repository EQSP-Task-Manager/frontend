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
  @JsonKey(name: 'tags')
  @HiveField(10)
  List<Tag> get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoCopyWith<Todo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res>;
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
      @JsonKey(name: 'tags') @HiveField(10) List<Tag> tags});
}

/// @nodoc
class _$TodoCopyWithImpl<$Res> implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  final Todo _value;
  // ignore: unused_field
  final $Res Function(Todo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? importance = freezed,
    Object? deadline = freezed,
    Object? done = freezed,
    Object? color = freezed,
    Object? createdAt = freezed,
    Object? changedAt = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      importance: importance == freezed
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as Importance,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as int?,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      changedAt: changedAt == freezed
          ? _value.changedAt
          : changedAt // ignore: cast_nullable_to_non_nullable
              as int,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
    ));
  }
}

/// @nodoc
abstract class _$$_TodoCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$$_TodoCopyWith(_$_Todo value, $Res Function(_$_Todo) then) =
      __$$_TodoCopyWithImpl<$Res>;
  @override
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
      @JsonKey(name: 'tags') @HiveField(10) List<Tag> tags});
}

/// @nodoc
class __$$_TodoCopyWithImpl<$Res> extends _$TodoCopyWithImpl<$Res>
    implements _$$_TodoCopyWith<$Res> {
  __$$_TodoCopyWithImpl(_$_Todo _value, $Res Function(_$_Todo) _then)
      : super(_value, (v) => _then(v as _$_Todo));

  @override
  _$_Todo get _value => super._value as _$_Todo;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? importance = freezed,
    Object? deadline = freezed,
    Object? done = freezed,
    Object? color = freezed,
    Object? createdAt = freezed,
    Object? changedAt = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$_Todo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      importance: importance == freezed
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as Importance,
      deadline: deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as int?,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as int,
      changedAt: changedAt == freezed
          ? _value.changedAt
          : changedAt // ignore: cast_nullable_to_non_nullable
              as int,
      tags: tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
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
      @JsonKey(name: 'tags') @HiveField(10) required final List<Tag> tags})
      : _tags = tags;

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
  final List<Tag> _tags;
  @override
  @JsonKey(name: 'tags')
  @HiveField(10)
  List<Tag> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'Todo(id: $id, title: $title, description: $description, importance: $importance, deadline: $deadline, done: $done, color: $color, createdAt: $createdAt, changedAt: $changedAt, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Todo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.importance, importance) &&
            const DeepCollectionEquality().equals(other.deadline, deadline) &&
            const DeepCollectionEquality().equals(other.done, done) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.changedAt, changedAt) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(importance),
      const DeepCollectionEquality().hash(deadline),
      const DeepCollectionEquality().hash(done),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(changedAt),
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
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
      @JsonKey(name: 'tags')
      @HiveField(10)
          required final List<Tag> tags}) = _$_Todo;

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
  @JsonKey(name: 'tags')
  @HiveField(10)
  List<Tag> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_TodoCopyWith<_$_Todo> get copyWith => throw _privateConstructorUsedError;
}
