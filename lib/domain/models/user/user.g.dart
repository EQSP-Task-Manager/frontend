// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 3;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      id: fields[0] as String,
      login: fields[1] as String,
      clientId: fields[2] as String,
      displayName: fields[3] as String,
      avatarId: fields[4] as String,
      isAvatarEmpty: fields[5] as bool,
      psuid: fields[6] as String,
      oauthToken: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.login)
      ..writeByte(2)
      ..write(obj.clientId)
      ..writeByte(3)
      ..write(obj.displayName)
      ..writeByte(4)
      ..write(obj.avatarId)
      ..writeByte(5)
      ..write(obj.isAvatarEmpty)
      ..writeByte(6)
      ..write(obj.psuid)
      ..writeByte(7)
      ..write(obj.oauthToken);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      login: json['login'] as String,
      clientId: json['client_id'] as String,
      displayName: json['display_name'] as String,
      avatarId: json['default_avatar_id'] as String,
      isAvatarEmpty: json['is_avatar_empty'] as bool,
      psuid: json['psuid'] as String,
      oauthToken: json['oauthToken'] as String,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'client_id': instance.clientId,
      'display_name': instance.displayName,
      'default_avatar_id': instance.avatarId,
      'is_avatar_empty': instance.isAvatarEmpty,
      'psuid': instance.psuid,
      'oauthToken': instance.oauthToken,
    };
