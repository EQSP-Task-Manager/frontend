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
part 'widgets/tag.dart';
part 'widgets/color.dart';

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
  final List<Tag>? tagsToSubmit;
  final String? colorToSubmit;

  const SubmitionData({
    Key? key,
    this.titleToSubmit,
    this.descriptionToSubmit,
    this.importanceToSubmit,
    this.deadlineToSubmit,
    this.tagsToSubmit,
    this.colorToSubmit,
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
  List<Tag>? tagsToSubmit;
  String? colorToSubmit;
  Todo? todo;
  bool todoFetched = false;
  ScrollController controller = ScrollController();

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

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
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
    tagsToSubmit = todo!.tags;
    colorToSubmit = todo!.color;
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
                ? NotificationListener<OverscrollIndicatorNotification>(
                    onNotification: (overscroll) {
                      overscroll.disallowIndicator();
                      return true;
                    },
                    child: CustomScrollView(
                      controller: controller,
                      slivers: [
                        SubmitionData(
                          titleToSubmit: titleToSubmit,
                          importanceToSubmit: importanceToSubmit,
                          deadlineToSubmit: deadlineToSubmit,
                          descriptionToSubmit: descriptionToSubmit,
                          tagsToSubmit: tagsToSubmit,
                          colorToSubmit: colorToSubmit,
                          child: _AppBar(
                            element: todo,
                          ),
                        ),
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: _PageContent(
                              scrollController: controller,
                              element: todo,
                              supportSeparator: themeState.supportSeparator,
                              submitTaskTitle: (value) =>
                                  setState(() => titleToSubmit = value),
                              submitTaskDescription: (value) =>
                                  setState(() => descriptionToSubmit = value),
                              submitImportance: (value) =>
                                  setState(() => importanceToSubmit = value),
                              submitDeadline: (value) =>
                                  setState(() => deadlineToSubmit = value),
                              submitTags: (value) =>
                                  setState(() => tagsToSubmit = value),
                              submitColor: (value) =>
                                  setState(() => colorToSubmit = value),
                            ),
                          ),
                        ),
                      ],
                    ),
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
        elevation: 0,
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
                tags: submitionData.tagsToSubmit,
                color: submitionData.colorToSubmit,
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
                color: submitionData.colorToSubmit,
              ),
            );
  }
}

class _PageContent extends StatefulWidget {
  final Function(String) submitTaskTitle;
  final Function(String) submitTaskDescription;
  final Function(Importance) submitImportance;
  final Function(DateTime?) submitDeadline;
  final Function(List<Tag>) submitTags;
  final Function(String?) submitColor;
  final Color supportSeparator;
  final Todo? element;
  final ScrollController scrollController;
  const _PageContent({
    required this.submitDeadline,
    required this.submitImportance,
    required this.submitTaskTitle,
    required this.submitTaskDescription,
    required this.supportSeparator,
    required this.element,
    required this.scrollController,
    required this.submitTags,
    required this.submitColor,
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
    _Color(
      element: widget.element,
      submit: widget.submitColor,
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
    return NotificationListener<OverscrollIndicatorNotification>(
      onNotification: (overscroll) {
        overscroll.disallowIndicator();
        return true;
      },
      child: ListView.separated(
        controller: widget.scrollController,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        shrinkWrap: true,
        itemBuilder: (context, index) => items[index],
        separatorBuilder: (p0, p1) => const SizedBox(height: 30),
        itemCount: items.length,
      ),
    );
  }
}
