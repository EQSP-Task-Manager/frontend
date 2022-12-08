part of '../todos_item.dart';

class ItemCheckbox extends StatefulWidget {
  final Todo element;
  const ItemCheckbox({
    required this.element,
    Key? key,
  }) : super(key: key);

  @override
  State<ItemCheckbox> createState() => _ItemTextState();
}

class _ItemTextState extends State<ItemCheckbox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.element.importance == Importance.important
          ? getIt.get<ThemeBloc>().currentTheme.importanceColor.withOpacity(0.2)
          : null,
      width: 18.0,
      height: 18.0,
      child: Checkbox(
        fillColor: widget.element.done
            ? MaterialStateProperty.all(
                getIt.get<ThemeBloc>().currentTheme.green)
            : widget.element.importance == Importance.important
                ? MaterialStateProperty.all(
                    getIt.get<ThemeBloc>().currentTheme.importanceColor)
                : null,
        value: widget.element.done,
        onChanged: (_) {
          context.read<TodosBloc>().add(
                TodosEvent.edit(
                  item: widget.element,
                  actionTool: ActionTool.checkbox,
                ),
              );
        },
      ),
    );
  }
}
