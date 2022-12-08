import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:done/application/application.dart';
import 'package:done/data/data.dart';

import 'package:done/presentation/presentation.dart';
import 'package:done/domain/domain.dart';

part 'widgets/close_button.dart';
part 'widgets/save_button.dart';
part 'widgets/text_input.dart';
part 'widgets/importance.dart';
part 'widgets/deadline.dart';
part 'widgets/delete_button.dart';

class TodoSettingsPage extends StatefulWidget {
  final String? todoId;
  final Todo? todo;
  const TodoSettingsPage({
    this.todoId,
    this.todo,
    Key? key,
  })  : assert(todoId == null || todo == null),
        super(key: key);

  @override
  State<TodoSettingsPage> createState() => _TodoSettingsPageState();
}

class SubmitionData extends InheritedWidget {
  final String? titleToSubmit;
  final String? descriptionToSubmit;
  final Importance? importanceToSubmit;
  final DateTime? deadlineToSubmit;

  const SubmitionData({
    Key? key,
    this.titleToSubmit,
    this.descriptionToSubmit,
    this.importanceToSubmit,
    this.deadlineToSubmit,
    required Widget child,
  }) : super(key: key, child: child);

  static SubmitionData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SubmitionData>()!;
  }

  @override
  bool updateShouldNotify(SubmitionData oldWidget) =>
      titleToSubmit != oldWidget.titleToSubmit ||
      importanceToSubmit != oldWidget.importanceToSubmit ||
      deadlineToSubmit != oldWidget.deadlineToSubmit;
}

class _TodoSettingsPageState extends State<TodoSettingsPage> {
  String? titleToSubmit;
  String? descriptionToSubmit;
  Importance? importanceToSubmit;
  DateTime? deadlineToSubmit;
  Todo? todo;
  bool todoFetched = false;

  @override
  void initState() {
    super.initState();

    if (widget.todo == null) {
      fecthTodo();
    } else {
      todo = widget.todo;
      initSubmissionData();
      todoFetched = true;
    }
  }

  void fecthTodo() async {
    if (widget.todoId != null) {
      TodosRepositoryImpl().getTodo(widget.todoId!);
      initSubmissionData();
    }

    if (mounted) {
      setState(() {
        todoFetched = true;
      });
    }
  }

  void initSubmissionData() {
    titleToSubmit = todo!.title;
    descriptionToSubmit = todo!.description;
    importanceToSubmit = todo!.importance;
    if (todo!.deadline != null) {
      deadlineToSubmit = DateTime.fromMillisecondsSinceEpoch(todo!.deadline!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, AppTheme>(
      builder: (context, themeState) {
        return Scaffold(
          body: SafeArea(
            child: todoFetched
                ? CustomScrollView(
                    slivers: [
                      SubmitionData(
                        titleToSubmit: titleToSubmit,
                        importanceToSubmit: importanceToSubmit,
                        deadlineToSubmit: deadlineToSubmit,
                        descriptionToSubmit: descriptionToSubmit,
                        child: _AppBar(
                          element: todo,
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: _PageContent(
                            element: todo,
                            supportSeparator: themeState.supportSeparator,
                            submitTaskTitle: (value) {
                              setState(() {
                                titleToSubmit = value;
                              });
                            },
                            submitTaskDescription: (value) {
                              setState(() {
                                descriptionToSubmit = value;
                              });
                            },
                            submitImportance: (value) {
                              setState(() {
                                importanceToSubmit = value;
                              });
                            },
                            submitDeadline: (value) {
                              setState(() {
                                deadlineToSubmit = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  )
                : Center(
                    child: CircularProgressIndicator(
                      color: getIt.get<ThemeBloc>().currentTheme.black,
                    ),
                  ),
          ),
        );
      },
    );
  }
}

class _AppBar extends StatelessWidget {
  final Todo? element;
  const _AppBar({
    this.element,
    Key? key,
  }) : super(key: key);

  @override
  build(BuildContext context) {
    return BlocBuilder<AppBarBloc, bool>(
      builder: (context, isShown) => SliverAppBar(
        automaticallyImplyLeading: false,
        pinned: isShown,
        snap: !isShown,
        floating: !isShown,
        flexibleSpace: FlexibleSpaceBar(
          titlePadding: const EdgeInsets.only(left: 21, right: 16),
          title: Container(
            alignment: Alignment.center,
            child: Row(
              children: [
                const _CloseButton(),
                const Spacer(),
                _SaveButton(
                  key: const Key('save_button'),
                  send: () => onSave(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onSave(BuildContext context) {
    SubmitionData submitionData = SubmitionData.of(context);
    element == null
        ? context.read<TodosBloc>().add(
              TodosEvent.add(
                title: submitionData.titleToSubmit,
                description: submitionData.descriptionToSubmit,
                importance:
                    submitionData.importanceToSubmit ?? Importance.basic,
                deadline: submitionData.deadlineToSubmit,
                actionTool: ActionTool.settingsPage,
                tag: Tag.work,
                color: 'fc03ad',
              ),
            )
        : context.read<TodosBloc>().add(
              TodosEvent.edit(
                item: element!,
                title: submitionData.titleToSubmit,
                description: submitionData.descriptionToSubmit,
                importance:
                    submitionData.importanceToSubmit ?? Importance.basic,
                deadline: submitionData.deadlineToSubmit,
                tags: submitionData.tagsToSubmit,
                actionTool: ActionTool.settingsPage,
              ),
            );
  }
}

class _PageContent extends StatelessWidget {
  final Function(String) submitTaskTitle;
  final Function(String) submitTaskDescription;
  final Function(Importance) submitImportance;
  final Function(DateTime?) submitDeadline;
  final Color supportSeparator;
  final Todo? element;
  const _PageContent({
    required this.submitDeadline,
    required this.submitImportance,
    required this.submitTaskTitle,
    required this.submitTaskDescription,
    required this.supportSeparator,
    required this.element,
    Key? key,
  }) : super(key: key);

  @override
  State<_PageContent> createState() => _PageContentState();
}

class _PageContentState extends State<_PageContent> {
  late List<Widget> items = [
    _TextInput(
      key: const Key('titleTextInput'),
      title: S.of(context).taskTitle,
      hintText: S.of(context).whatShouldBeDone,
      element: widget.element,
      submit: widget.submitTaskTitle,
      isTaskTitle: true,
    ),
    _Tag(
      element: widget.element,
      submit: widget.submitTags,
    ),
    _Importance(
      element: widget.element,
      submit: widget.submitImportance,
    ),
    _Deadline(
      element: widget.element,
      submit: widget.submitDeadline,
    ),
    _TextInput(
      key: const Key('descriptionTextInput'),
      title: S.of(context).description,
      hintText: S.of(context).addDescription,
      element: widget.element,
      submit: widget.submitTaskDescription,
      isDescription: true,
    ),
    _DeleteButton(
      element: widget.element,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _TextInput(
            title: S.of(context).taskTitle,
            hintText: S.of(context).whatShouldBeDone,
            element: element,
            submit: submitTaskTitle,
            isTaskTitle: true,
          ),
          const SizedBox(height: 30),
          _Importance(
            element: element,
            submit: submitImportance,
          ),
          const SizedBox(height: 30),
          _Deadline(
            element: element,
            submit: submitDeadline,
          ),
          const SizedBox(height: 30),
          _TextInput(
            title: S.of(context).description,
            hintText: S.of(context).addDescription,
            element: element,
            submit: submitTaskDescription,
            isDescription: true,
          ),
          const SizedBox(height: 30),
          _DeleteButton(
            element: element,
          ),
        ],
      ),
    );
  }
}
