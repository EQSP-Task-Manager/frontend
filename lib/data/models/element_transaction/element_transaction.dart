import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:done/domain/domain.dart';

part 'element_transaction.freezed.dart';
part 'element_transaction.g.dart';

@freezed
class ElementTransaction with _$ElementTransaction {
  const factory ElementTransaction({
    required Todo? element,
    required int revision,
  }) = _ElementTransaction;

  factory ElementTransaction.fromJson(Map<String, dynamic> json) =>
      _$ElementTransactionFromJson(json);
}
