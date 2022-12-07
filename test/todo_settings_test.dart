import 'package:done/application/application.dart';
import 'package:done/application/services/fake_config_service.dart';
import 'package:done/data/data.dart';
import 'package:done/flavor_config.dart';
import 'package:done/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_helpers.dart';

main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  FlavorConfigDTO flavorConfigDTO =
      FlavorConfigDTO(appName: 'Done', flavor: 'prod');

  Future<void> pumpSettingsPage(WidgetTester tester) async {
    await getIt.reset();
    getIt.registerSingleton<RemoteConfigService>(FakeConfigService());
    getIt.registerSingleton(TodosBloc(FakeTodosRepsitoryImpl()));
    getIt.registerSingleton(ThemeBloc());
    getIt.registerSingleton(AppBarBloc());

    await tester.pumpWidget(
      FlavorConfig(
        appName: flavorConfigDTO.appName,
        flavor: flavorConfigDTO.flavor,
        child: MaterialApp(
          localizationsDelegates: const [
            S.delegate,
          ],
          home: MultiBlocProvider(
            providers: [
              BlocProvider(create: (_) => getIt.get<ThemeBloc>()),
              BlocProvider(create: (_) => getIt.get<TodosBloc>()),
              BlocProvider(create: (_) => getIt.get<AppBarBloc>()),
            ],
            child: BlocBuilder<ThemeBloc, AppTheme>(
              builder: (context, state) => Scaffold(
                backgroundColor: state.backPrimary,
                body: const TodoSettingsPage(),
              ),
            ),
          ),
        ),
      ),
    );

    await tester.pump();
  }

  testWidgets("Render todo page", (WidgetTester tester) async {
    FlutterError.onError = ignoreOverflowErrors;

    await pumpSettingsPage(tester);

    Finder titleField = find.byKey(const Key('titleTextInput'));
    await tester.enterText(titleField, 'Kek');
    await tester.pump();

    expect(find.textContaining('Kek'), findsOneWidget);

    Finder importance = find.textContaining('Importance');
    await tester.tap(importance, warnIfMissed: false);
    await tester.pump();

    Finder low = find.textContaining('Low');

    expect(low, findsWidgets);

    await tester.tap(low.first, warnIfMissed: false);
    await tester.pump();

    expect(low, findsOneWidget);

    Finder deadlineSwitch = find.byType(Switch);
    expect(deadlineSwitch, findsOneWidget);

    await tester.tap(deadlineSwitch, warnIfMissed: false);
    await tester.pump();

    Finder date = find.textContaining('28', findRichText: true);
    expect(date, findsOneWidget);
    await tester.tap(date, warnIfMissed: false);
    await tester.pump();

    Finder ok = find.textContaining('OK', findRichText: true);
    expect(ok, findsOneWidget);
    await tester.tap(ok, warnIfMissed: false);
    await tester.pump();

    Finder descriptionField = find.byKey(const Key('descriptionTextInput'));
    await tester.enterText(descriptionField, 'Lol');
    await tester.pump();

    expect(find.textContaining('Lol'), findsOneWidget);
  });
}
