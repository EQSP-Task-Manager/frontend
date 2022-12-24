part of 'todos_page.dart';

class InputItem extends StatefulWidget {
  const InputItem({Key? key}) : super(key: key);

  @override
  State<InputItem> createState() => _InputItemState();
}

class _InputItemState extends State<InputItem> {
  final FocusNode _focus = FocusNode();
  final FocusNode _textFocus = FocusNode();
  final TextEditingController _controller = TextEditingController();
  final TextInputAction _textInputAction = TextInputAction.done;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _focus.dispose();
    _textFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBarBloc, bool>(
      builder: (context, state) {
        return Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 52, vertical: 14),
          child: AppBarHider(
            textField: TextField(
              cursorColor: getIt.get<ThemeBloc>().currentTheme.grey,
              maxLines: 3,
              minLines: 1,
              focusNode: _textFocus,
              controller: _controller,
              textInputAction: _textInputAction,
              decoration: InputDecoration.collapsed(
                hintText: S.of(context).new_,
                hintStyle: Theme.of(context).textTheme.body.copyWith(
                    color: getIt.get<ThemeBloc>().currentTheme.labelTertiary),
              ),
              style: Theme.of(context).textTheme.body.copyWith(
                  color: getIt.get<ThemeBloc>().currentTheme.labelPrimary),
              onSubmitted: (_) => onEnterPressed(),
            ),
          ),
        );
      },
    );
  }

  void onEnterPressed() {
    _focus.unfocus();

    if (mounted) {
      if (_controller.text != '') {
        context.read<TodosBloc>().add(
              TodosEvent.add(
                title: _controller.text,
                importance: Importance.basic,
                deadline: null,
                actionTool: ActionTool.todosPage,
              ),
            );
      }
    }
  }
}
