// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get login => throw _privateConstructorUsedError;
  @JsonKey(name: 'client_id')
  @HiveField(2)
  String get clientId => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  @HiveField(3)
  String get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'default_avatar_id')
  @HiveField(4)
  String get avatarId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_avatar_empty')
  @HiveField(5)
  bool get isAvatarEmpty => throw _privateConstructorUsedError;
  @HiveField(6)
  String get psuid => throw _privateConstructorUsedError;
  @HiveField(7)
  String get oauthToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String login,
      @JsonKey(name: 'client_id') @HiveField(2) String clientId,
      @JsonKey(name: 'display_name') @HiveField(3) String displayName,
      @JsonKey(name: 'default_avatar_id') @HiveField(4) String avatarId,
      @JsonKey(name: 'is_avatar_empty') @HiveField(5) bool isAvatarEmpty,
      @HiveField(6) String psuid,
      @HiveField(7) String oauthToken});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? clientId = freezed,
    Object? displayName = freezed,
    Object? avatarId = freezed,
    Object? isAvatarEmpty = freezed,
    Object? psuid = freezed,
    Object? oauthToken = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarId: avatarId == freezed
          ? _value.avatarId
          : avatarId // ignore: cast_nullable_to_non_nullable
              as String,
      isAvatarEmpty: isAvatarEmpty == freezed
          ? _value.isAvatarEmpty
          : isAvatarEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      psuid: psuid == freezed
          ? _value.psuid
          : psuid // ignore: cast_nullable_to_non_nullable
              as String,
      oauthToken: oauthToken == freezed
          ? _value.oauthToken
          : oauthToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String login,
      @JsonKey(name: 'client_id') @HiveField(2) String clientId,
      @JsonKey(name: 'display_name') @HiveField(3) String displayName,
      @JsonKey(name: 'default_avatar_id') @HiveField(4) String avatarId,
      @JsonKey(name: 'is_avatar_empty') @HiveField(5) bool isAvatarEmpty,
      @HiveField(6) String psuid,
      @HiveField(7) String oauthToken});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, (v) => _then(v as _$_User));

  @override
  _$_User get _value => super._value as _$_User;

  @override
  $Res call({
    Object? id = freezed,
    Object? login = freezed,
    Object? clientId = freezed,
    Object? displayName = freezed,
    Object? avatarId = freezed,
    Object? isAvatarEmpty = freezed,
    Object? psuid = freezed,
    Object? oauthToken = freezed,
  }) {
    return _then(_$_User(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: clientId == freezed
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      avatarId: avatarId == freezed
          ? _value.avatarId
          : avatarId // ignore: cast_nullable_to_non_nullable
              as String,
      isAvatarEmpty: isAvatarEmpty == freezed
          ? _value.isAvatarEmpty
          : isAvatarEmpty // ignore: cast_nullable_to_non_nullable
              as bool,
      psuid: psuid == freezed
          ? _value.psuid
          : psuid // ignore: cast_nullable_to_non_nullable
              as String,
      oauthToken: oauthToken == freezed
          ? _value.oauthToken
          : oauthToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {@HiveField(0)
          required this.id,
      @HiveField(1)
          required this.login,
      @JsonKey(name: 'client_id')
      @HiveField(2)
          required this.clientId,
      @JsonKey(name: 'display_name')
      @HiveField(3)
          required this.displayName,
      @JsonKey(name: 'default_avatar_id')
      @HiveField(4)
          required this.avatarId,
      @JsonKey(name: 'is_avatar_empty')
      @HiveField(5)
          required this.isAvatarEmpty,
      @HiveField(6)
          required this.psuid,
      @HiveField(7)
          required this.oauthToken});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String login;
  @override
  @JsonKey(name: 'client_id')
  @HiveField(2)
  final String clientId;
  @override
  @JsonKey(name: 'display_name')
  @HiveField(3)
  final String displayName;
  @override
  @JsonKey(name: 'default_avatar_id')
  @HiveField(4)
  final String avatarId;
  @override
  @JsonKey(name: 'is_avatar_empty')
  @HiveField(5)
  final bool isAvatarEmpty;
  @override
  @HiveField(6)
  final String psuid;
  @override
  @HiveField(7)
  final String oauthToken;

  @override
  String toString() {
    return 'User(id: $id, login: $login, clientId: $clientId, displayName: $displayName, avatarId: $avatarId, isAvatarEmpty: $isAvatarEmpty, psuid: $psuid, oauthToken: $oauthToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.login, login) &&
            const DeepCollectionEquality().equals(other.clientId, clientId) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality().equals(other.avatarId, avatarId) &&
            const DeepCollectionEquality()
                .equals(other.isAvatarEmpty, isAvatarEmpty) &&
            const DeepCollectionEquality().equals(other.psuid, psuid) &&
            const DeepCollectionEquality()
                .equals(other.oauthToken, oauthToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(login),
      const DeepCollectionEquality().hash(clientId),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(avatarId),
      const DeepCollectionEquality().hash(isAvatarEmpty),
      const DeepCollectionEquality().hash(psuid),
      const DeepCollectionEquality().hash(oauthToken));

  @JsonKey(ignore: true)
  @override
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {@HiveField(0)
          required final String id,
      @HiveField(1)
          required final String login,
      @JsonKey(name: 'client_id')
      @HiveField(2)
          required final String clientId,
      @JsonKey(name: 'display_name')
      @HiveField(3)
          required final String displayName,
      @JsonKey(name: 'default_avatar_id')
      @HiveField(4)
          required final String avatarId,
      @JsonKey(name: 'is_avatar_empty')
      @HiveField(5)
          required final bool isAvatarEmpty,
      @HiveField(6)
          required final String psuid,
      @HiveField(7)
          required final String oauthToken}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get login;
  @override
  @JsonKey(name: 'client_id')
  @HiveField(2)
  String get clientId;
  @override
  @JsonKey(name: 'display_name')
  @HiveField(3)
  String get displayName;
  @override
  @JsonKey(name: 'default_avatar_id')
  @HiveField(4)
  String get avatarId;
  @override
  @JsonKey(name: 'is_avatar_empty')
  @HiveField(5)
  bool get isAvatarEmpty;
  @override
  @HiveField(6)
  String get psuid;
  @override
  @HiveField(7)
  String get oauthToken;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
