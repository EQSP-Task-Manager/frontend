import 'package:pixel_snap/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../application/application.dart';
import '../../domain/domain.dart';
import '../presentation.dart';

// GoRouter configuration
final goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const TodosPage(),
    ),
    GoRoute(
      path: '/todo',
      name: 'TodoSettingsPage',
      pageBuilder: (context, state) => ModalBottomSheetPage(
        child: TodoSettingsPage(
          todoId: state.params['todo_id'],
          todo: state.extra as Todo?,
        ),
      ),
    ),
  ],
);

class ModalBottomSheetPage<T> extends Page<T> {
  final Widget child;

  const ModalBottomSheetPage({required this.child, super.key});

  @override
  Route<T> createRoute(BuildContext context) => ModalBottomSheetRoute(
        settings: this,
        builder: (context) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: getIt.get<ThemeBloc>().currentTheme.backPrimary,
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Container(
                height: 6,
                width: 60,
                decoration: BoxDecoration(
                  color: getIt.get<ThemeBloc>().currentTheme.labelPrimary,
                  borderRadius: const BorderRadius.all(Radius.circular(3)),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: child,
            ),
          ],
        ),
        expanded: false,
      );
}
