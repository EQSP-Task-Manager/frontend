// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListTransaction _$$_ListTransactionFromJson(Map<String, dynamic> json) =>
    _$_ListTransaction(
      list: (json['list'] as List<dynamic>?)
          ?.map((e) => Todo.fromJson(e as Map<String, dynamic>))
          .toList(),
      revision: json['revision'] as int,
    );

Map<String, dynamic> _$$_ListTransactionToJson(_$_ListTransaction instance) =>
    <String, dynamic>{
      'list': instance.list,
      'revision': instance.revision,
    };
