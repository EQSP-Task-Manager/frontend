import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@HiveType(typeId: 3)
@freezed
class User with _$User {
  const factory User({
    @HiveField(0) required String id,
    @HiveField(1) required String login,
    @JsonKey(name: 'client_id') @HiveField(2) required String clientId,
    @JsonKey(name: 'display_name') @HiveField(3) required String displayName,
    @JsonKey(name: 'default_avatar_id') @HiveField(4) required String avatarId,
    @JsonKey(name: 'is_avatar_empty') @HiveField(5) required bool isAvatarEmpty,
    @HiveField(6) required String psuid,
    @HiveField(7) required String oauthToken,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
