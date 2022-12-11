part of '../todo_settings_page.dart';

class _CloseButton extends StatelessWidget {
  const _CloseButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Icon(
        Icons.close,
        color: getIt.get<ThemeBloc>().currentTheme.labelPrimary,
      ),
      onTap: () {
        (Router.of(context).routerDelegate as TodosRouterDelegate)
            .goToTodosPage();
      },
    );
  }
}
