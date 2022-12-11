// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'submission_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubmissionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) submitTitle,
    required TResult Function(String text) submitDescription,
    required TResult Function(Importance importance) submitImportance,
    required TResult Function(DateTime? deadline) submitDeadline,
    required TResult Function(List<Tag> tags) submitTags,
    required TResult Function(String? color) submitColor,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? submitTitle,
    TResult Function(String text)? submitDescription,
    TResult Function(Importance importance)? submitImportance,
    TResult Function(DateTime? deadline)? submitDeadline,
    TResult Function(List<Tag> tags)? submitTags,
    TResult Function(String? color)? submitColor,
    TResult Function()? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? submitTitle,
    TResult Function(String text)? submitDescription,
    TResult Function(Importance importance)? submitImportance,
    TResult Function(DateTime? deadline)? submitDeadline,
    TResult Function(List<Tag> tags)? submitTags,
    TResult Function(String? color)? submitColor,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitTitle value) submitTitle,
    required TResult Function(_SubmitDescription value) submitDescription,
    required TResult Function(_SubmitImportance value) submitImportance,
    required TResult Function(_SubmitDeadline value) submitDeadline,
    required TResult Function(_SubmitTags value) submitTags,
    required TResult Function(_SubmitColor value) submitColor,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubmitTitle value)? submitTitle,
    TResult Function(_SubmitDescription value)? submitDescription,
    TResult Function(_SubmitImportance value)? submitImportance,
    TResult Function(_SubmitDeadline value)? submitDeadline,
    TResult Function(_SubmitTags value)? submitTags,
    TResult Function(_SubmitColor value)? submitColor,
    TResult Function(_Submit value)? submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitTitle value)? submitTitle,
    TResult Function(_SubmitDescription value)? submitDescription,
    TResult Function(_SubmitImportance value)? submitImportance,
    TResult Function(_SubmitDeadline value)? submitDeadline,
    TResult Function(_SubmitTags value)? submitTags,
    TResult Function(_SubmitColor value)? submitColor,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionEventCopyWith<$Res> {
  factory $SubmissionEventCopyWith(
          SubmissionEvent value, $Res Function(SubmissionEvent) then) =
      _$SubmissionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SubmissionEventCopyWithImpl<$Res>
    implements $SubmissionEventCopyWith<$Res> {
  _$SubmissionEventCopyWithImpl(this._value, this._then);

  final SubmissionEvent _value;
  // ignore: unused_field
  final $Res Function(SubmissionEvent) _then;
}

/// @nodoc
abstract class _$$_SubmitTitleCopyWith<$Res> {
  factory _$$_SubmitTitleCopyWith(
          _$_SubmitTitle value, $Res Function(_$_SubmitTitle) then) =
      __$$_SubmitTitleCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class __$$_SubmitTitleCopyWithImpl<$Res>
    extends _$SubmissionEventCopyWithImpl<$Res>
    implements _$$_SubmitTitleCopyWith<$Res> {
  __$$_SubmitTitleCopyWithImpl(
      _$_SubmitTitle _value, $Res Function(_$_SubmitTitle) _then)
      : super(_value, (v) => _then(v as _$_SubmitTitle));

  @override
  _$_SubmitTitle get _value => super._value as _$_SubmitTitle;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$_SubmitTitle(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SubmitTitle implements _SubmitTitle {
  const _$_SubmitTitle(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'SubmissionEvent.submitTitle(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubmitTitle &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$_SubmitTitleCopyWith<_$_SubmitTitle> get copyWith =>
      __$$_SubmitTitleCopyWithImpl<_$_SubmitTitle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) submitTitle,
    required TResult Function(String text) submitDescription,
    required TResult Function(Importance importance) submitImportance,
    required TResult Function(DateTime? deadline) submitDeadline,
    required TResult Function(List<Tag> tags) submitTags,
    required TResult Function(String? color) submitColor,
    required TResult Function() submit,
  }) {
    return submitTitle(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? submitTitle,
    TResult Function(String text)? submitDescription,
    TResult Function(Importance importance)? submitImportance,
    TResult Function(DateTime? deadline)? submitDeadline,
    TResult Function(List<Tag> tags)? submitTags,
    TResult Function(String? color)? submitColor,
    TResult Function()? submit,
  }) {
    return submitTitle?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? submitTitle,
    TResult Function(String text)? submitDescription,
    TResult Function(Importance importance)? submitImportance,
    TResult Function(DateTime? deadline)? submitDeadline,
    TResult Function(List<Tag> tags)? submitTags,
    TResult Function(String? color)? submitColor,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submitTitle != null) {
      return submitTitle(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitTitle value) submitTitle,
    required TResult Function(_SubmitDescription value) submitDescription,
    required TResult Function(_SubmitImportance value) submitImportance,
    required TResult Function(_SubmitDeadline value) submitDeadline,
    required TResult Function(_SubmitTags value) submitTags,
    required TResult Function(_SubmitColor value) submitColor,
    required TResult Function(_Submit value) submit,
  }) {
    return submitTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubmitTitle value)? submitTitle,
    TResult Function(_SubmitDescription value)? submitDescription,
    TResult Function(_SubmitImportance value)? submitImportance,
    TResult Function(_SubmitDeadline value)? submitDeadline,
    TResult Function(_SubmitTags value)? submitTags,
    TResult Function(_SubmitColor value)? submitColor,
    TResult Function(_Submit value)? submit,
  }) {
    return submitTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitTitle value)? submitTitle,
    TResult Function(_SubmitDescription value)? submitDescription,
    TResult Function(_SubmitImportance value)? submitImportance,
    TResult Function(_SubmitDeadline value)? submitDeadline,
    TResult Function(_SubmitTags value)? submitTags,
    TResult Function(_SubmitColor value)? submitColor,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submitTitle != null) {
      return submitTitle(this);
    }
    return orElse();
  }
}

abstract class _SubmitTitle implements SubmissionEvent {
  const factory _SubmitTitle(final String text) = _$_SubmitTitle;

  String get text;
  @JsonKey(ignore: true)
  _$$_SubmitTitleCopyWith<_$_SubmitTitle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitDescriptionCopyWith<$Res> {
  factory _$$_SubmitDescriptionCopyWith(_$_SubmitDescription value,
          $Res Function(_$_SubmitDescription) then) =
      __$$_SubmitDescriptionCopyWithImpl<$Res>;
  $Res call({String text});
}

/// @nodoc
class __$$_SubmitDescriptionCopyWithImpl<$Res>
    extends _$SubmissionEventCopyWithImpl<$Res>
    implements _$$_SubmitDescriptionCopyWith<$Res> {
  __$$_SubmitDescriptionCopyWithImpl(
      _$_SubmitDescription _value, $Res Function(_$_SubmitDescription) _then)
      : super(_value, (v) => _then(v as _$_SubmitDescription));

  @override
  _$_SubmitDescription get _value => super._value as _$_SubmitDescription;

  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$_SubmitDescription(
      text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SubmitDescription implements _SubmitDescription {
  const _$_SubmitDescription(this.text);

  @override
  final String text;

  @override
  String toString() {
    return 'SubmissionEvent.submitDescription(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubmitDescription &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$_SubmitDescriptionCopyWith<_$_SubmitDescription> get copyWith =>
      __$$_SubmitDescriptionCopyWithImpl<_$_SubmitDescription>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) submitTitle,
    required TResult Function(String text) submitDescription,
    required TResult Function(Importance importance) submitImportance,
    required TResult Function(DateTime? deadline) submitDeadline,
    required TResult Function(List<Tag> tags) submitTags,
    required TResult Function(String? color) submitColor,
    required TResult Function() submit,
  }) {
    return submitDescription(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? submitTitle,
    TResult Function(String text)? submitDescription,
    TResult Function(Importance importance)? submitImportance,
    TResult Function(DateTime? deadline)? submitDeadline,
    TResult Function(List<Tag> tags)? submitTags,
    TResult Function(String? color)? submitColor,
    TResult Function()? submit,
  }) {
    return submitDescription?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? submitTitle,
    TResult Function(String text)? submitDescription,
    TResult Function(Importance importance)? submitImportance,
    TResult Function(DateTime? deadline)? submitDeadline,
    TResult Function(List<Tag> tags)? submitTags,
    TResult Function(String? color)? submitColor,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submitDescription != null) {
      return submitDescription(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitTitle value) submitTitle,
    required TResult Function(_SubmitDescription value) submitDescription,
    required TResult Function(_SubmitImportance value) submitImportance,
    required TResult Function(_SubmitDeadline value) submitDeadline,
    required TResult Function(_SubmitTags value) submitTags,
    required TResult Function(_SubmitColor value) submitColor,
    required TResult Function(_Submit value) submit,
  }) {
    return submitDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubmitTitle value)? submitTitle,
    TResult Function(_SubmitDescription value)? submitDescription,
    TResult Function(_SubmitImportance value)? submitImportance,
    TResult Function(_SubmitDeadline value)? submitDeadline,
    TResult Function(_SubmitTags value)? submitTags,
    TResult Function(_SubmitColor value)? submitColor,
    TResult Function(_Submit value)? submit,
  }) {
    return submitDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitTitle value)? submitTitle,
    TResult Function(_SubmitDescription value)? submitDescription,
    TResult Function(_SubmitImportance value)? submitImportance,
    TResult Function(_SubmitDeadline value)? submitDeadline,
    TResult Function(_SubmitTags value)? submitTags,
    TResult Function(_SubmitColor value)? submitColor,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submitDescription != null) {
      return submitDescription(this);
    }
    return orElse();
  }
}

abstract class _SubmitDescription implements SubmissionEvent {
  const factory _SubmitDescription(final String text) = _$_SubmitDescription;

  String get text;
  @JsonKey(ignore: true)
  _$$_SubmitDescriptionCopyWith<_$_SubmitDescription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitImportanceCopyWith<$Res> {
  factory _$$_SubmitImportanceCopyWith(
          _$_SubmitImportance value, $Res Function(_$_SubmitImportance) then) =
      __$$_SubmitImportanceCopyWithImpl<$Res>;
  $Res call({Importance importance});
}

/// @nodoc
class __$$_SubmitImportanceCopyWithImpl<$Res>
    extends _$SubmissionEventCopyWithImpl<$Res>
    implements _$$_SubmitImportanceCopyWith<$Res> {
  __$$_SubmitImportanceCopyWithImpl(
      _$_SubmitImportance _value, $Res Function(_$_SubmitImportance) _then)
      : super(_value, (v) => _then(v as _$_SubmitImportance));

  @override
  _$_SubmitImportance get _value => super._value as _$_SubmitImportance;

  @override
  $Res call({
    Object? importance = freezed,
  }) {
    return _then(_$_SubmitImportance(
      importance == freezed
          ? _value.importance
          : importance // ignore: cast_nullable_to_non_nullable
              as Importance,
    ));
  }
}

/// @nodoc

class _$_SubmitImportance implements _SubmitImportance {
  const _$_SubmitImportance(this.importance);

  @override
  final Importance importance;

  @override
  String toString() {
    return 'SubmissionEvent.submitImportance(importance: $importance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubmitImportance &&
            const DeepCollectionEquality()
                .equals(other.importance, importance));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(importance));

  @JsonKey(ignore: true)
  @override
  _$$_SubmitImportanceCopyWith<_$_SubmitImportance> get copyWith =>
      __$$_SubmitImportanceCopyWithImpl<_$_SubmitImportance>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) submitTitle,
    required TResult Function(String text) submitDescription,
    required TResult Function(Importance importance) submitImportance,
    required TResult Function(DateTime? deadline) submitDeadline,
    required TResult Function(List<Tag> tags) submitTags,
    required TResult Function(String? color) submitColor,
    required TResult Function() submit,
  }) {
    return submitImportance(importance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? submitTitle,
    TResult Function(String text)? submitDescription,
    TResult Function(Importance importance)? submitImportance,
    TResult Function(DateTime? deadline)? submitDeadline,
    TResult Function(List<Tag> tags)? submitTags,
    TResult Function(String? color)? submitColor,
    TResult Function()? submit,
  }) {
    return submitImportance?.call(importance);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? submitTitle,
    TResult Function(String text)? submitDescription,
    TResult Function(Importance importance)? submitImportance,
    TResult Function(DateTime? deadline)? submitDeadline,
    TResult Function(List<Tag> tags)? submitTags,
    TResult Function(String? color)? submitColor,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submitImportance != null) {
      return submitImportance(importance);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitTitle value) submitTitle,
    required TResult Function(_SubmitDescription value) submitDescription,
    required TResult Function(_SubmitImportance value) submitImportance,
    required TResult Function(_SubmitDeadline value) submitDeadline,
    required TResult Function(_SubmitTags value) submitTags,
    required TResult Function(_SubmitColor value) submitColor,
    required TResult Function(_Submit value) submit,
  }) {
    return submitImportance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubmitTitle value)? submitTitle,
    TResult Function(_SubmitDescription value)? submitDescription,
    TResult Function(_SubmitImportance value)? submitImportance,
    TResult Function(_SubmitDeadline value)? submitDeadline,
    TResult Function(_SubmitTags value)? submitTags,
    TResult Function(_SubmitColor value)? submitColor,
    TResult Function(_Submit value)? submit,
  }) {
    return submitImportance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitTitle value)? submitTitle,
    TResult Function(_SubmitDescription value)? submitDescription,
    TResult Function(_SubmitImportance value)? submitImportance,
    TResult Function(_SubmitDeadline value)? submitDeadline,
    TResult Function(_SubmitTags value)? submitTags,
    TResult Function(_SubmitColor value)? submitColor,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submitImportance != null) {
      return submitImportance(this);
    }
    return orElse();
  }
}

abstract class _SubmitImportance implements SubmissionEvent {
  const factory _SubmitImportance(final Importance importance) =
      _$_SubmitImportance;

  Importance get importance;
  @JsonKey(ignore: true)
  _$$_SubmitImportanceCopyWith<_$_SubmitImportance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitDeadlineCopyWith<$Res> {
  factory _$$_SubmitDeadlineCopyWith(
          _$_SubmitDeadline value, $Res Function(_$_SubmitDeadline) then) =
      __$$_SubmitDeadlineCopyWithImpl<$Res>;
  $Res call({DateTime? deadline});
}

/// @nodoc
class __$$_SubmitDeadlineCopyWithImpl<$Res>
    extends _$SubmissionEventCopyWithImpl<$Res>
    implements _$$_SubmitDeadlineCopyWith<$Res> {
  __$$_SubmitDeadlineCopyWithImpl(
      _$_SubmitDeadline _value, $Res Function(_$_SubmitDeadline) _then)
      : super(_value, (v) => _then(v as _$_SubmitDeadline));

  @override
  _$_SubmitDeadline get _value => super._value as _$_SubmitDeadline;

  @override
  $Res call({
    Object? deadline = freezed,
  }) {
    return _then(_$_SubmitDeadline(
      deadline == freezed
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_SubmitDeadline implements _SubmitDeadline {
  const _$_SubmitDeadline(this.deadline);

  @override
  final DateTime? deadline;

  @override
  String toString() {
    return 'SubmissionEvent.submitDeadline(deadline: $deadline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubmitDeadline &&
            const DeepCollectionEquality().equals(other.deadline, deadline));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(deadline));

  @JsonKey(ignore: true)
  @override
  _$$_SubmitDeadlineCopyWith<_$_SubmitDeadline> get copyWith =>
      __$$_SubmitDeadlineCopyWithImpl<_$_SubmitDeadline>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) submitTitle,
    required TResult Function(String text) submitDescription,
    required TResult Function(Importance importance) submitImportance,
    required TResult Function(DateTime? deadline) submitDeadline,
    required TResult Function(List<Tag> tags) submitTags,
    required TResult Function(String? color) submitColor,
    required TResult Function() submit,
  }) {
    return submitDeadline(deadline);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? submitTitle,
    TResult Function(String text)? submitDescription,
    TResult Function(Importance importance)? submitImportance,
    TResult Function(DateTime? deadline)? submitDeadline,
    TResult Function(List<Tag> tags)? submitTags,
    TResult Function(String? color)? submitColor,
    TResult Function()? submit,
  }) {
    return submitDeadline?.call(deadline);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? submitTitle,
    TResult Function(String text)? submitDescription,
    TResult Function(Importance importance)? submitImportance,
    TResult Function(DateTime? deadline)? submitDeadline,
    TResult Function(List<Tag> tags)? submitTags,
    TResult Function(String? color)? submitColor,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submitDeadline != null) {
      return submitDeadline(deadline);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitTitle value) submitTitle,
    required TResult Function(_SubmitDescription value) submitDescription,
    required TResult Function(_SubmitImportance value) submitImportance,
    required TResult Function(_SubmitDeadline value) submitDeadline,
    required TResult Function(_SubmitTags value) submitTags,
    required TResult Function(_SubmitColor value) submitColor,
    required TResult Function(_Submit value) submit,
  }) {
    return submitDeadline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubmitTitle value)? submitTitle,
    TResult Function(_SubmitDescription value)? submitDescription,
    TResult Function(_SubmitImportance value)? submitImportance,
    TResult Function(_SubmitDeadline value)? submitDeadline,
    TResult Function(_SubmitTags value)? submitTags,
    TResult Function(_SubmitColor value)? submitColor,
    TResult Function(_Submit value)? submit,
  }) {
    return submitDeadline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitTitle value)? submitTitle,
    TResult Function(_SubmitDescription value)? submitDescription,
    TResult Function(_SubmitImportance value)? submitImportance,
    TResult Function(_SubmitDeadline value)? submitDeadline,
    TResult Function(_SubmitTags value)? submitTags,
    TResult Function(_SubmitColor value)? submitColor,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submitDeadline != null) {
      return submitDeadline(this);
    }
    return orElse();
  }
}

abstract class _SubmitDeadline implements SubmissionEvent {
  const factory _SubmitDeadline(final DateTime? deadline) = _$_SubmitDeadline;

  DateTime? get deadline;
  @JsonKey(ignore: true)
  _$$_SubmitDeadlineCopyWith<_$_SubmitDeadline> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitTagsCopyWith<$Res> {
  factory _$$_SubmitTagsCopyWith(
          _$_SubmitTags value, $Res Function(_$_SubmitTags) then) =
      __$$_SubmitTagsCopyWithImpl<$Res>;
  $Res call({List<Tag> tags});
}

/// @nodoc
class __$$_SubmitTagsCopyWithImpl<$Res>
    extends _$SubmissionEventCopyWithImpl<$Res>
    implements _$$_SubmitTagsCopyWith<$Res> {
  __$$_SubmitTagsCopyWithImpl(
      _$_SubmitTags _value, $Res Function(_$_SubmitTags) _then)
      : super(_value, (v) => _then(v as _$_SubmitTags));

  @override
  _$_SubmitTags get _value => super._value as _$_SubmitTags;

  @override
  $Res call({
    Object? tags = freezed,
  }) {
    return _then(_$_SubmitTags(
      tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<Tag>,
    ));
  }
}

/// @nodoc

class _$_SubmitTags implements _SubmitTags {
  const _$_SubmitTags(final List<Tag> tags) : _tags = tags;

  final List<Tag> _tags;
  @override
  List<Tag> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'SubmissionEvent.submitTags(tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubmitTags &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  _$$_SubmitTagsCopyWith<_$_SubmitTags> get copyWith =>
      __$$_SubmitTagsCopyWithImpl<_$_SubmitTags>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) submitTitle,
    required TResult Function(String text) submitDescription,
    required TResult Function(Importance importance) submitImportance,
    required TResult Function(DateTime? deadline) submitDeadline,
    required TResult Function(List<Tag> tags) submitTags,
    required TResult Function(String? color) submitColor,
    required TResult Function() submit,
  }) {
    return submitTags(tags);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? submitTitle,
    TResult Function(String text)? submitDescription,
    TResult Function(Importance importance)? submitImportance,
    TResult Function(DateTime? deadline)? submitDeadline,
    TResult Function(List<Tag> tags)? submitTags,
    TResult Function(String? color)? submitColor,
    TResult Function()? submit,
  }) {
    return submitTags?.call(tags);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? submitTitle,
    TResult Function(String text)? submitDescription,
    TResult Function(Importance importance)? submitImportance,
    TResult Function(DateTime? deadline)? submitDeadline,
    TResult Function(List<Tag> tags)? submitTags,
    TResult Function(String? color)? submitColor,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submitTags != null) {
      return submitTags(tags);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitTitle value) submitTitle,
    required TResult Function(_SubmitDescription value) submitDescription,
    required TResult Function(_SubmitImportance value) submitImportance,
    required TResult Function(_SubmitDeadline value) submitDeadline,
    required TResult Function(_SubmitTags value) submitTags,
    required TResult Function(_SubmitColor value) submitColor,
    required TResult Function(_Submit value) submit,
  }) {
    return submitTags(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubmitTitle value)? submitTitle,
    TResult Function(_SubmitDescription value)? submitDescription,
    TResult Function(_SubmitImportance value)? submitImportance,
    TResult Function(_SubmitDeadline value)? submitDeadline,
    TResult Function(_SubmitTags value)? submitTags,
    TResult Function(_SubmitColor value)? submitColor,
    TResult Function(_Submit value)? submit,
  }) {
    return submitTags?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitTitle value)? submitTitle,
    TResult Function(_SubmitDescription value)? submitDescription,
    TResult Function(_SubmitImportance value)? submitImportance,
    TResult Function(_SubmitDeadline value)? submitDeadline,
    TResult Function(_SubmitTags value)? submitTags,
    TResult Function(_SubmitColor value)? submitColor,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submitTags != null) {
      return submitTags(this);
    }
    return orElse();
  }
}

abstract class _SubmitTags implements SubmissionEvent {
  const factory _SubmitTags(final List<Tag> tags) = _$_SubmitTags;

  List<Tag> get tags;
  @JsonKey(ignore: true)
  _$$_SubmitTagsCopyWith<_$_SubmitTags> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitColorCopyWith<$Res> {
  factory _$$_SubmitColorCopyWith(
          _$_SubmitColor value, $Res Function(_$_SubmitColor) then) =
      __$$_SubmitColorCopyWithImpl<$Res>;
  $Res call({String? color});
}

/// @nodoc
class __$$_SubmitColorCopyWithImpl<$Res>
    extends _$SubmissionEventCopyWithImpl<$Res>
    implements _$$_SubmitColorCopyWith<$Res> {
  __$$_SubmitColorCopyWithImpl(
      _$_SubmitColor _value, $Res Function(_$_SubmitColor) _then)
      : super(_value, (v) => _then(v as _$_SubmitColor));

  @override
  _$_SubmitColor get _value => super._value as _$_SubmitColor;

  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_$_SubmitColor(
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SubmitColor implements _SubmitColor {
  const _$_SubmitColor(this.color);

  @override
  final String? color;

  @override
  String toString() {
    return 'SubmissionEvent.submitColor(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubmitColor &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$$_SubmitColorCopyWith<_$_SubmitColor> get copyWith =>
      __$$_SubmitColorCopyWithImpl<_$_SubmitColor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) submitTitle,
    required TResult Function(String text) submitDescription,
    required TResult Function(Importance importance) submitImportance,
    required TResult Function(DateTime? deadline) submitDeadline,
    required TResult Function(List<Tag> tags) submitTags,
    required TResult Function(String? color) submitColor,
    required TResult Function() submit,
  }) {
    return submitColor(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? submitTitle,
    TResult Function(String text)? submitDescription,
    TResult Function(Importance importance)? submitImportance,
    TResult Function(DateTime? deadline)? submitDeadline,
    TResult Function(List<Tag> tags)? submitTags,
    TResult Function(String? color)? submitColor,
    TResult Function()? submit,
  }) {
    return submitColor?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? submitTitle,
    TResult Function(String text)? submitDescription,
    TResult Function(Importance importance)? submitImportance,
    TResult Function(DateTime? deadline)? submitDeadline,
    TResult Function(List<Tag> tags)? submitTags,
    TResult Function(String? color)? submitColor,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submitColor != null) {
      return submitColor(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitTitle value) submitTitle,
    required TResult Function(_SubmitDescription value) submitDescription,
    required TResult Function(_SubmitImportance value) submitImportance,
    required TResult Function(_SubmitDeadline value) submitDeadline,
    required TResult Function(_SubmitTags value) submitTags,
    required TResult Function(_SubmitColor value) submitColor,
    required TResult Function(_Submit value) submit,
  }) {
    return submitColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubmitTitle value)? submitTitle,
    TResult Function(_SubmitDescription value)? submitDescription,
    TResult Function(_SubmitImportance value)? submitImportance,
    TResult Function(_SubmitDeadline value)? submitDeadline,
    TResult Function(_SubmitTags value)? submitTags,
    TResult Function(_SubmitColor value)? submitColor,
    TResult Function(_Submit value)? submit,
  }) {
    return submitColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitTitle value)? submitTitle,
    TResult Function(_SubmitDescription value)? submitDescription,
    TResult Function(_SubmitImportance value)? submitImportance,
    TResult Function(_SubmitDeadline value)? submitDeadline,
    TResult Function(_SubmitTags value)? submitTags,
    TResult Function(_SubmitColor value)? submitColor,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submitColor != null) {
      return submitColor(this);
    }
    return orElse();
  }
}

abstract class _SubmitColor implements SubmissionEvent {
  const factory _SubmitColor(final String? color) = _$_SubmitColor;

  String? get color;
  @JsonKey(ignore: true)
  _$$_SubmitColorCopyWith<_$_SubmitColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitCopyWith<$Res> {
  factory _$$_SubmitCopyWith(_$_Submit value, $Res Function(_$_Submit) then) =
      __$$_SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubmitCopyWithImpl<$Res> extends _$SubmissionEventCopyWithImpl<$Res>
    implements _$$_SubmitCopyWith<$Res> {
  __$$_SubmitCopyWithImpl(_$_Submit _value, $Res Function(_$_Submit) _then)
      : super(_value, (v) => _then(v as _$_Submit));

  @override
  _$_Submit get _value => super._value as _$_Submit;
}

/// @nodoc

class _$_Submit implements _Submit {
  const _$_Submit();

  @override
  String toString() {
    return 'SubmissionEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Submit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text) submitTitle,
    required TResult Function(String text) submitDescription,
    required TResult Function(Importance importance) submitImportance,
    required TResult Function(DateTime? deadline) submitDeadline,
    required TResult Function(List<Tag> tags) submitTags,
    required TResult Function(String? color) submitColor,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text)? submitTitle,
    TResult Function(String text)? submitDescription,
    TResult Function(Importance importance)? submitImportance,
    TResult Function(DateTime? deadline)? submitDeadline,
    TResult Function(List<Tag> tags)? submitTags,
    TResult Function(String? color)? submitColor,
    TResult Function()? submit,
  }) {
    return submit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text)? submitTitle,
    TResult Function(String text)? submitDescription,
    TResult Function(Importance importance)? submitImportance,
    TResult Function(DateTime? deadline)? submitDeadline,
    TResult Function(List<Tag> tags)? submitTags,
    TResult Function(String? color)? submitColor,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubmitTitle value) submitTitle,
    required TResult Function(_SubmitDescription value) submitDescription,
    required TResult Function(_SubmitImportance value) submitImportance,
    required TResult Function(_SubmitDeadline value) submitDeadline,
    required TResult Function(_SubmitTags value) submitTags,
    required TResult Function(_SubmitColor value) submitColor,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SubmitTitle value)? submitTitle,
    TResult Function(_SubmitDescription value)? submitDescription,
    TResult Function(_SubmitImportance value)? submitImportance,
    TResult Function(_SubmitDeadline value)? submitDeadline,
    TResult Function(_SubmitTags value)? submitTags,
    TResult Function(_SubmitColor value)? submitColor,
    TResult Function(_Submit value)? submit,
  }) {
    return submit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubmitTitle value)? submitTitle,
    TResult Function(_SubmitDescription value)? submitDescription,
    TResult Function(_SubmitImportance value)? submitImportance,
    TResult Function(_SubmitDeadline value)? submitDeadline,
    TResult Function(_SubmitTags value)? submitTags,
    TResult Function(_SubmitColor value)? submitColor,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements SubmissionEvent {
  const factory _Submit() = _$_Submit;
}

/// @nodoc
mixin _$SubmissionState {
  Todo? get todo => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo? todo) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo? todo)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo? todo)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubmissionStateCopyWith<SubmissionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmissionStateCopyWith<$Res> {
  factory $SubmissionStateCopyWith(
          SubmissionState value, $Res Function(SubmissionState) then) =
      _$SubmissionStateCopyWithImpl<$Res>;
  $Res call({Todo? todo});

  $TodoCopyWith<$Res>? get todo;
}

/// @nodoc
class _$SubmissionStateCopyWithImpl<$Res>
    implements $SubmissionStateCopyWith<$Res> {
  _$SubmissionStateCopyWithImpl(this._value, this._then);

  final SubmissionState _value;
  // ignore: unused_field
  final $Res Function(SubmissionState) _then;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(_value.copyWith(
      todo: todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo?,
    ));
  }

  @override
  $TodoCopyWith<$Res>? get todo {
    if (_value.todo == null) {
      return null;
    }

    return $TodoCopyWith<$Res>(_value.todo!, (value) {
      return _then(_value.copyWith(todo: value));
    });
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $SubmissionStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  $Res call({Todo? todo});

  @override
  $TodoCopyWith<$Res>? get todo;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$SubmissionStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;

  @override
  $Res call({
    Object? todo = freezed,
  }) {
    return _then(_$_Initial(
      todo == freezed
          ? _value.todo
          : todo // ignore: cast_nullable_to_non_nullable
              as Todo?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(this.todo);

  @override
  final Todo? todo;

  @override
  String toString() {
    return 'SubmissionState.initial(todo: $todo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality().equals(other.todo, todo));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(todo));

  @JsonKey(ignore: true)
  @override
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Todo? todo) initial,
  }) {
    return initial(todo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Todo? todo)? initial,
  }) {
    return initial?.call(todo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Todo? todo)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(todo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SubmissionState {
  const factory _Initial(final Todo? todo) = _$_Initial;

  @override
  Todo? get todo;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
