part of '../todo_settings_page.dart';

class _SaveButton extends StatelessWidget {
  const _SaveButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: getIt.get<ThemeBloc>().currentTheme.backPrimary,
      child: SizedBox(
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () {
            context.read<SubmissionBloc>().add(const SubmissionEvent.submit());
            goRouter.pop();
          },
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              getIt.get<ThemeBloc>().currentTheme.labelPrimary,
            ),
            foregroundColor: MaterialStatePropertyAll(
              getIt.get<ThemeBloc>().currentTheme.backPrimary,
            ),
            elevation: const MaterialStatePropertyAll(0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          child: Text(
            S.of(context).save,
            style: Theme.of(context).textTheme.body.copyWith(
                  color: getIt.get<ThemeBloc>().currentTheme.backPrimary,
                ),
          ),
        ),
      ),
    );
  }
}
