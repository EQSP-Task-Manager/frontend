// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'element_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ElementTransaction _$ElementTransactionFromJson(Map<String, dynamic> json) {
  return _ElementTransaction.fromJson(json);
}

/// @nodoc
mixin _$ElementTransaction {
  Todo? get element => throw _privateConstructorUsedError;
  int get revision => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElementTransactionCopyWith<ElementTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementTransactionCopyWith<$Res> {
  factory $ElementTransactionCopyWith(
          ElementTransaction value, $Res Function(ElementTransaction) then) =
      _$ElementTransactionCopyWithImpl<$Res>;
  $Res call({Todo? element, int revision});

  $TodoCopyWith<$Res>? get element;
}

/// @nodoc
class _$ElementTransactionCopyWithImpl<$Res>
    implements $ElementTransactionCopyWith<$Res> {
  _$ElementTransactionCopyWithImpl(this._value, this._then);

  final ElementTransaction _value;
  // ignore: unused_field
  final $Res Function(ElementTransaction) _then;

  @override
  $Res call({
    Object? element = freezed,
    Object? revision = freezed,
  }) {
    return _then(_value.copyWith(
      element: element == freezed
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as Todo?,
      revision: revision == freezed
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $TodoCopyWith<$Res>? get element {
    if (_value.element == null) {
      return null;
    }

    return $TodoCopyWith<$Res>(_value.element!, (value) {
      return _then(_value.copyWith(element: value));
    });
  }
}

/// @nodoc
abstract class _$$_ElementTransactionCopyWith<$Res>
    implements $ElementTransactionCopyWith<$Res> {
  factory _$$_ElementTransactionCopyWith(_$_ElementTransaction value,
          $Res Function(_$_ElementTransaction) then) =
      __$$_ElementTransactionCopyWithImpl<$Res>;
  @override
  $Res call({Todo? element, int revision});

  @override
  $TodoCopyWith<$Res>? get element;
}

/// @nodoc
class __$$_ElementTransactionCopyWithImpl<$Res>
    extends _$ElementTransactionCopyWithImpl<$Res>
    implements _$$_ElementTransactionCopyWith<$Res> {
  __$$_ElementTransactionCopyWithImpl(
      _$_ElementTransaction _value, $Res Function(_$_ElementTransaction) _then)
      : super(_value, (v) => _then(v as _$_ElementTransaction));

  @override
  _$_ElementTransaction get _value => super._value as _$_ElementTransaction;

  @override
  $Res call({
    Object? element = freezed,
    Object? revision = freezed,
  }) {
    return _then(_$_ElementTransaction(
      element: element == freezed
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as Todo?,
      revision: revision == freezed
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ElementTransaction implements _ElementTransaction {
  const _$_ElementTransaction({required this.element, required this.revision});

  factory _$_ElementTransaction.fromJson(Map<String, dynamic> json) =>
      _$$_ElementTransactionFromJson(json);

  @override
  final Todo? element;
  @override
  final int revision;

  @override
  String toString() {
    return 'ElementTransaction(element: $element, revision: $revision)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElementTransaction &&
            const DeepCollectionEquality().equals(other.element, element) &&
            const DeepCollectionEquality().equals(other.revision, revision));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(element),
      const DeepCollectionEquality().hash(revision));

  @JsonKey(ignore: true)
  @override
  _$$_ElementTransactionCopyWith<_$_ElementTransaction> get copyWith =>
      __$$_ElementTransactionCopyWithImpl<_$_ElementTransaction>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElementTransactionToJson(
      this,
    );
  }
}

abstract class _ElementTransaction implements ElementTransaction {
  const factory _ElementTransaction(
      {required final Todo? element,
      required final int revision}) = _$_ElementTransaction;

  factory _ElementTransaction.fromJson(Map<String, dynamic> json) =
      _$_ElementTransaction.fromJson;

  @override
  Todo? get element;
  @override
  int get revision;
  @override
  @JsonKey(ignore: true)
  _$$_ElementTransactionCopyWith<_$_ElementTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}
