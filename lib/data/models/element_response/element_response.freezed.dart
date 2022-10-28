// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'element_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ElementResponse _$ElementResponseFromJson(Map<String, dynamic> json) {
  return _ElementResponse.fromJson(json);
}

/// @nodoc
mixin _$ElementResponse {
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'element')
  Todo get element => throw _privateConstructorUsedError;
  @JsonKey(name: 'revision')
  int get revision => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ElementResponseCopyWith<ElementResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ElementResponseCopyWith<$Res> {
  factory $ElementResponseCopyWith(
          ElementResponse value, $Res Function(ElementResponse) then) =
      _$ElementResponseCopyWithImpl<$Res, ElementResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'element') Todo element,
      @JsonKey(name: 'revision') int revision});

  $TodoCopyWith<$Res> get element;
}

/// @nodoc
class _$ElementResponseCopyWithImpl<$Res, $Val extends ElementResponse>
    implements $ElementResponseCopyWith<$Res> {
  _$ElementResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? element = null,
    Object? revision = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      element: null == element
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as Todo,
      revision: null == revision
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TodoCopyWith<$Res> get element {
    return $TodoCopyWith<$Res>(_value.element, (value) {
      return _then(_value.copyWith(element: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ElementResponseCopyWith<$Res>
    implements $ElementResponseCopyWith<$Res> {
  factory _$$_ElementResponseCopyWith(
          _$_ElementResponse value, $Res Function(_$_ElementResponse) then) =
      __$$_ElementResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status') String status,
      @JsonKey(name: 'element') Todo element,
      @JsonKey(name: 'revision') int revision});

  @override
  $TodoCopyWith<$Res> get element;
}

/// @nodoc
class __$$_ElementResponseCopyWithImpl<$Res>
    extends _$ElementResponseCopyWithImpl<$Res, _$_ElementResponse>
    implements _$$_ElementResponseCopyWith<$Res> {
  __$$_ElementResponseCopyWithImpl(
      _$_ElementResponse _value, $Res Function(_$_ElementResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? element = null,
    Object? revision = null,
  }) {
    return _then(_$_ElementResponse(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      element: null == element
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as Todo,
      revision: null == revision
          ? _value.revision
          : revision // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ElementResponse implements _ElementResponse {
  const _$_ElementResponse(
      {@JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'element') required this.element,
      @JsonKey(name: 'revision') required this.revision});

  factory _$_ElementResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ElementResponseFromJson(json);

  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'element')
  final Todo element;
  @override
  @JsonKey(name: 'revision')
  final int revision;

  @override
  String toString() {
    return 'ElementResponse(status: $status, element: $element, revision: $revision)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElementResponse &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.element, element) || other.element == element) &&
            (identical(other.revision, revision) ||
                other.revision == revision));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, element, revision);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ElementResponseCopyWith<_$_ElementResponse> get copyWith =>
      __$$_ElementResponseCopyWithImpl<_$_ElementResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ElementResponseToJson(
      this,
    );
  }
}

abstract class _ElementResponse implements ElementResponse {
  const factory _ElementResponse(
          {@JsonKey(name: 'status') required final String status,
          @JsonKey(name: 'element') required final Todo element,
          @JsonKey(name: 'revision') required final int revision}) =
      _$_ElementResponse;

  factory _ElementResponse.fromJson(Map<String, dynamic> json) =
      _$_ElementResponse.fromJson;

  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'element')
  Todo get element;
  @override
  @JsonKey(name: 'revision')
  int get revision;
  @override
  @JsonKey(ignore: true)
  _$$_ElementResponseCopyWith<_$_ElementResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
