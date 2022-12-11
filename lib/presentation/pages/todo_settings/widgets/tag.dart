part of '../todo_settings_page.dart';

class _Tag extends StatefulWidget {
  final Todo? element;
  const _Tag({
    this.element,
    Key? key,
  }) : super(key: key);

  @override
  State<_Tag> createState() => _TagState();
}

class _TagState extends State<_Tag> {
  late List<Tag> tags = widget.element?.tags?.toList() ?? [];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).tag,
          style: Theme.of(context).textTheme.title.copyWith(
                color: getIt.get<ThemeBloc>().currentTheme.labelPrimary,
              ),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: Tag.values
              .map((tag) => GestureDetector(
                    onTap: () {
                      setState(() {
                        if (tags.contains(tag)) {
                          tags.remove(tag);
                        } else {
                          tags.add(tag);
                        }
                      });
                      context
                          .read<SubmissionBloc>()
                          .add(SubmissionEvent.submitTags(tags));
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 12,
                      ),
                      decoration: BoxDecoration(
                        color: tag.color
                            .withOpacity(tags.contains(tag) ? 0.75 : 0.30),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        border: Border.all(
                          color: tags.contains(tag)
                              ? context.read<ThemeBloc>().currentTheme.grey
                              : context
                                  .read<ThemeBloc>()
                                  .currentTheme
                                  .lightGrey,
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            tag.iconData,
                            color: textColor(tags.contains(tag)),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            tag.name,
                            style: Theme.of(context).textTheme.body.copyWith(
                                  color: textColor(tags.contains(tag)),
                                ),
                          ),
                        ],
                      ),
                    ),
                  ))
              .toList(),
        )
      ],
    );
  }

  Color textColor(bool isSelected) =>
      isSelected ? LightTheme().labelPrimary : LightTheme().labelSecondary;
}
