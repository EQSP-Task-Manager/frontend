import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:intl/intl.dart';
import 'package:done/application/application.dart';
import 'package:done/data/data.dart';

import 'package:done/presentation/presentation.dart';
import 'package:done/domain/domain.dart';

export 'bloc/submission_bloc.dart';

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

class _TodoSettingsPageState extends State<TodoSettingsPage> {
  bool todoFetched = false;
  late Todo? todo;
  ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();

    if (widget.todo == null) {
      fecthTodo();
    } else {
      todo = widget.todo!;
      todoFetched = true;
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void fecthTodo() async {
    todo = widget.todoId != null
        ? await TodosRepositoryImpl().getTodo(widget.todoId!)
        : null;

    if (mounted) {
      setState(() {
        todoFetched = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: todoFetched
            ? NotificationListener<OverscrollIndicatorNotification>(
                onNotification: (overscroll) {
                  overscroll.disallowIndicator();
                  return true;
                },
                child: BlocProvider(
                  create: (context) => SubmissionBloc(todo),
                  child: BlocBuilder<SubmissionBloc, SubmissionState>(
                    builder: (context, state) {
                      return Stack(
                        children: [
                          ListView(
                            padding: const EdgeInsets.only(top: 10, bottom: 20),
                            controller: controller,
                            shrinkWrap: true,
                            children: [
                              _PageContent(
                                scrollController: controller,
                                element: todo,
                              ),
                              const SizedBox(height: 90),
                            ],
                          ),
                          const Align(
                            alignment: Alignment.bottomCenter,
                            child: _SaveButton(),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              )
            : Center(
                child: CircularProgressIndicator(
                  color: getIt.get<ThemeBloc>().currentTheme.black,
                ),
              ),
      ),
    );
  }
}

class _PageContent extends StatefulWidget {
  final Todo? element;
  final ScrollController scrollController;
  const _PageContent({
    required this.element,
    required this.scrollController,
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
      isTaskTitle: true,
    ),
    _Tag(
      element: widget.element,
    ),
    _Color(
      element: widget.element,
    ),
    _Importance(
      element: widget.element,
    ),
    _Deadline(
      element: widget.element,
    ),
    _TextInput(
      key: const Key('descriptionTextInput'),
      title: S.of(context).description,
      hintText: S.of(context).addDescription,
      element: widget.element,
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
