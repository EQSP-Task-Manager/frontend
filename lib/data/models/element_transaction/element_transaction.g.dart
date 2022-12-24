// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'element_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ElementTransaction _$$_ElementTransactionFromJson(
        Map<String, dynamic> json) =>
    _$_ElementTransaction(
      element: json['element'] == null
          ? null
          : Todo.fromJson(json['element'] as Map<String, dynamic>),
      revision: json['revision'] as int,
    );

Map<String, dynamic> _$$_ElementTransactionToJson(
        _$_ElementTransaction instance) =>
    <String, dynamic>{
      'element': instance.element,
      'revision': instance.revision,
    };
