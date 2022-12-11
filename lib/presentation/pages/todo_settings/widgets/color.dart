part of '../todo_settings_page.dart';

class _Color extends StatefulWidget {
  final Todo? element;
  const _Color({
    this.element,
    Key? key,
  }) : super(key: key);

  @override
  State<_Color> createState() => _ColorState();
}

class _ColorState extends State<_Color> {
  late String? color = widget.element?.color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).color,
          style: Theme.of(context).textTheme.title.copyWith(
                color: getIt.get<ThemeBloc>().currentTheme.labelPrimary,
              ),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: context
              .read<ThemeBloc>()
              .currentTheme
              .todoColors
              .map(
                (color) => GestureDetector(
                  onTap: () {
                    setState(() {
                      this.color = colorToString(color);
                    });
                    context
                        .read<SubmissionBloc>()
                        .add(SubmissionEvent.submitColor(this.color));
                  },
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: this.color == colorToString(color)
                          ? color.withOpacity(0.85)
                          : color.withOpacity(0.45),
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                    ),
                    child: this.color == colorToString(color)
                        ? Icon(
                            Icons.check,
                            color: color.computeLuminance() > 0.5
                                ? Colors.black.withOpacity(0.75)
                                : Colors.white.withOpacity(0.75),
                          )
                        : null,
                  ),
                ),
              )
              .toList(),
        )
      ],
    );
  }

  String colorToString(Color color) {
    String colorString = color.toString();
    return colorString.split('(0x')[1].split(')')[0];
  }
}
