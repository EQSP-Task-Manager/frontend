import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:done/domain/domain.dart';

part 'list_transaction.freezed.dart';
part 'list_transaction.g.dart';

@freezed
class ListTransaction with _$ListTransaction {
  const factory ListTransaction({
    required List<Todo>? list,
    required int revision,
  }) = _ListTransaction;

  factory ListTransaction.fromJson(Map<String, dynamic> json) =>
      _$ListTransactionFromJson(json);
}
