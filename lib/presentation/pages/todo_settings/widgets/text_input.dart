part of '../todo_settings_page.dart';

class _TextInput extends StatefulWidget {
  final Todo? element;
  final bool isTaskTitle;
  final bool isDescription;
  final String title;
  final String hintText;
  const _TextInput({
    this.element,
    required this.title,
    required this.hintText,
    this.isDescription = false,
    this.isTaskTitle = false,
    Key? key,
  })  : assert(isTaskTitle != isDescription),
        super(key: key);

  @override
  State<_TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<_TextInput> {
  final FocusNode _textFocus = FocusNode();
  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.element != null) {
      if (widget.isTaskTitle) {
        _textController.text = widget.element!.title;
      } else {
        _textController.text = widget.element!.description;
      }
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    _textFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: Theme.of(context).textTheme.title.copyWith(
                color: getIt.get<ThemeBloc>().currentTheme.labelPrimary,
              ),
        ),
        const SizedBox(height: 8),
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          child: AppBarHider(
            textField: TextField(
              focusNode: _textFocus,
              cursorColor: getIt.get<ThemeBloc>().currentTheme.grey,
              controller: _textController,
              style: Theme.of(context).textTheme.body.copyWith(
                    color: getIt.get<ThemeBloc>().currentTheme.labelPrimary,
                  ),
              minLines: 1,
              maxLines: null,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(16),
                hintText: widget.hintText,
                border: _border,
                focusedBorder: _border,
                enabledBorder: _border,
                filled: true,
                fillColor: getIt.get<ThemeBloc>().currentTheme.backElevated,
                hintStyle: Theme.of(context).textTheme.body.copyWith(
                      color: getIt.get<ThemeBloc>().currentTheme.labelTertiary,
                    ),
              ),
              onChanged: (text) {
                context.read<SubmissionBloc>().add(
                      widget.isDescription
                          ? SubmissionEvent.submitDescription(text)
                          : SubmissionEvent.submitTitle(text),
                    );
              },
            ),
          ),
        ),
      ],
    );
  }

  OutlineInputBorder get _border => OutlineInputBorder(
        borderSide: BorderSide(
          color: getIt.get<ThemeBloc>().currentTheme is DarkTheme
              ? Colors.transparent
              : getIt.get<ThemeBloc>().currentTheme.labelTertiary,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      );
}
