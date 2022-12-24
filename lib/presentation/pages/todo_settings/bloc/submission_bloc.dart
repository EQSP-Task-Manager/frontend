import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../application/application.dart';
import '../../../../domain/domain.dart';
import '../../../presentation.dart';

part 'submission_bloc.freezed.dart';

@freezed
class SubmissionEvent with _$SubmissionEvent {
  const factory SubmissionEvent.submitTitle(String text) = _SubmitTitle;

  const factory SubmissionEvent.submitDescription(String text) =
      _SubmitDescription;

  const factory SubmissionEvent.submitImportance(Importance importance) =
      _SubmitImportance;

  const factory SubmissionEvent.submitDeadline(DateTime? deadline) =
      _SubmitDeadline;

  const factory SubmissionEvent.submitTags(List<Tag> tags) = _SubmitTags;

  const factory SubmissionEvent.submitColor(String? color) = _SubmitColor;

  const factory SubmissionEvent.submit() = _Submit;
}

@freezed
class SubmissionState with _$SubmissionState {
  const factory SubmissionState.initial(Todo? todo) = _Initial;
}

class SubmissionBloc extends Bloc<SubmissionEvent, SubmissionState> {
  late String titleToSubmit;
  late Importance importanceToSubmit;
  late DateTime? deadlineToSubmit;
  late String descriptionToSubmit;
  late List<Tag> tagsToSubmit;
  late String? colorToSubmit;

  SubmissionBloc(Todo? todo) : super(_Initial(todo)) {
    titleToSubmit = todo?.title ?? '';
    importanceToSubmit = todo?.importance ?? Importance.basic;
    deadlineToSubmit = todo?.deadline != null
        ? DateTime.fromMillisecondsSinceEpoch(todo!.deadline! * 1000)
        : null;
    descriptionToSubmit = todo?.description ?? '';
    tagsToSubmit = todo?.tags ?? [];
    colorToSubmit = todo?.color;

    on<_SubmitTitle>((event, emit) => titleToSubmit = event.text);
    on<_SubmitDescription>((event, emit) => descriptionToSubmit = event.text);
    on<_SubmitImportance>(
        (event, emit) => importanceToSubmit = event.importance);
    on<_SubmitDeadline>((event, emit) => deadlineToSubmit = event.deadline);
    on<_SubmitTags>((event, emit) => tagsToSubmit = event.tags);
    on<_SubmitColor>((event, emit) => colorToSubmit = event.color);

    on<_Submit>((event, emit) {
      todo == null
          ? getIt.get<TodosBloc>().add(
                TodosEvent.add(
                  title: titleToSubmit,
                  description: descriptionToSubmit,
                  importance: importanceToSubmit,
                  deadline: deadlineToSubmit,
                  actionTool: ActionTool.settingsPage,
                  tags: tagsToSubmit,
                  color: colorToSubmit,
                ),
              )
          : getIt.get<TodosBloc>().add(
                TodosEvent.edit(
                  item: todo,
                  title: titleToSubmit,
                  description: descriptionToSubmit,
                  importance: importanceToSubmit,
                  deadline: deadlineToSubmit,
                  tags: tagsToSubmit,
                  actionTool: ActionTool.settingsPage,
                  color: colorToSubmit,
                ),
              );
    });
  }
}
