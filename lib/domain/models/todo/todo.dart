import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@HiveType(typeId: 1)
enum Importance {
  @JsonValue("low")
  @HiveField(0)
  low,
  @JsonValue("basic")
  @HiveField(1)
  basic,
  @JsonValue("important")
  @HiveField(2)
  important,
}

@HiveType(typeId: 2)
enum Tag {
  @JsonValue("home")
  @HiveField(0)
  home,
  @JsonValue("work")
  @HiveField(1)
  work,
  @JsonValue("study")
  @HiveField(2)
  study,
  @JsonValue("sport")
  @HiveField(3)
  sport,
  @JsonValue("firends")
  @HiveField(4)
  friends,
}

@HiveType(typeId: 0)
@freezed
class Todo with _$Todo {
  const factory Todo({
    @JsonKey(name: 'id') @HiveField(0) required String id,
    @JsonKey(name: 'title') @HiveField(1) required String title,
    @JsonKey(name: 'description') @HiveField(2) required String description,
    @JsonKey(name: 'importance') @HiveField(3) required Importance importance,
    @JsonKey(name: 'deadline') @HiveField(4) required int? deadline,
    @JsonKey(name: 'done') @HiveField(5) required bool done,
    @JsonKey(name: 'color') @HiveField(6) required String? color,
    @JsonKey(name: 'created_at') @HiveField(7) required int createdAt,
    @JsonKey(name: 'changed_at') @HiveField(8) required int changedAt,
    @JsonKey(name: 'tags') @HiveField(10) required List<Tag> tags,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
