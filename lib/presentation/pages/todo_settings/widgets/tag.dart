part of '../todo_settings_page.dart';

class _Tag extends StatefulWidget {
  final Function(List<Tag>) submit;
  const _Tag({
    required this.submit,
    Key? key,
  }) : super(key: key);

  @override
  State<_Tag> createState() => _TagState();
}

class _TagState extends State<_Tag> {
  List<Tag> tags = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).tag,
          style: Theme.of(context).textTheme.title,
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
                      widget.submit(tags);
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 12,
                      ),
                      decoration: BoxDecoration(
                        color:
                            tag.color.withOpacity(tags.contains(tag) ? 1 : 0.3),
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
                          Icon(tag.iconData),
                          const SizedBox(width: 8),
                          Text(tag.name),
                        ],
                      ),
                    ),
                  ))
              .toList(),
        )
      ],
    );
  }

  OutlineInputBorder get _border => const OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.transparent,
        ),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      );
}
