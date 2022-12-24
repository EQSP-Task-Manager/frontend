// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListTransaction _$ListTransactionFromJson(Map<String, dynamic> json) {
  return _ListTransaction.fromJson(json);
}

/// @nodoc
mixin _$ListTransaction {
  List<Todo>? get list => throw _privateConstructorUsedError;
  int get revision => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListTransactionCopyWith<ListTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTransactionCopyWith<$Res> {
  factory $ListTransactionCopyWith(
          ListTransaction value, $Res Function(ListTransaction) then) =
      _$ListTransactionCopyWithImpl<$Res>;
  $Res call({List<Todo>? list, int revision});
}

/// @nodoc
class _$ListTransactionCopyWithImpl<$Res>
    implements $ListTransactionCopyWith<$Res> {
  _$ListTransactionCopyWithImpl(this._value, this._then);

  final ListTransaction _value;
  // ignore: unused_field
  final $Res Function(ListTransaction) _then;

  @override
  $Res call({
    Object? list = freezed,
    Object? revision = freezed,
  }) {
    return _then(_value.copyWith(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Todo>?,
      revision: revision == freezed
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ListTransactionCopyWith<$Res>
    implements $ListTransactionCopyWith<$Res> {
  factory _$$_ListTransactionCopyWith(
          _$_ListTransaction value, $Res Function(_$_ListTransaction) then) =
      __$$_ListTransactionCopyWithImpl<$Res>;
  @override
  $Res call({List<Todo>? list, int revision});
}

/// @nodoc
class __$$_ListTransactionCopyWithImpl<$Res>
    extends _$ListTransactionCopyWithImpl<$Res>
    implements _$$_ListTransactionCopyWith<$Res> {
  __$$_ListTransactionCopyWithImpl(
      _$_ListTransaction _value, $Res Function(_$_ListTransaction) _then)
      : super(_value, (v) => _then(v as _$_ListTransaction));

  @override
  _$_ListTransaction get _value => super._value as _$_ListTransaction;

  @override
  $Res call({
    Object? list = freezed,
    Object? revision = freezed,
  }) {
    return _then(_$_ListTransaction(
      list: list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Todo>?,
      revision: revision == freezed
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListTransaction implements _ListTransaction {
  const _$_ListTransaction(
      {required final List<Todo>? list, required this.revision})
      : _list = list;

  factory _$_ListTransaction.fromJson(Map<String, dynamic> json) =>
      _$$_ListTransactionFromJson(json);

  final List<Todo>? _list;
  @override
  List<Todo>? get list {
    final value = _list;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int revision;

  @override
  String toString() {
    return 'ListTransaction(list: $list, revision: $revision)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListTransaction &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            const DeepCollectionEquality().equals(other.revision, revision));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_list),
      const DeepCollectionEquality().hash(revision));

  @JsonKey(ignore: true)
  @override
  _$$_ListTransactionCopyWith<_$_ListTransaction> get copyWith =>
      __$$_ListTransactionCopyWithImpl<_$_ListTransaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListTransactionToJson(
      this,
    );
  }
}

abstract class _ListTransaction implements ListTransaction {
  const factory _ListTransaction(
      {required final List<Todo>? list,
      required final int revision}) = _$_ListTransaction;

  factory _ListTransaction.fromJson(Map<String, dynamic> json) =
      _$_ListTransaction.fromJson;

  @override
  List<Todo>? get list;
  @override
  int get revision;
  @override
  @JsonKey(ignore: true)
  _$$_ListTransactionCopyWith<_$_ListTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}
