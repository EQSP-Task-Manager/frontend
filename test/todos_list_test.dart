import 'package:done/application/application.dart';
import 'package:done/application/services/fake_config_service.dart';
import 'package:done/data/data.dart';
import 'package:done/domain/domain.dart';
import 'package:done/flavor_config.dart';
import 'package:done/presentation/pages/todos/todos_item/todos_item.dart';
import 'package:done/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();

  late List<Todo> initialTodos;

  FlavorConfigDTO flavorConfigDTO =
      FlavorConfigDTO(appName: 'Done', flavor: 'prod');

  Future<void> pumpTodosList(WidgetTester tester) async {
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
                body: const TodosPage(),
              ),
            ),
          ),
        ),
      ),
    );

    await tester.pump();

    initialTodos = getIt.get<TodosBloc>().state.maybeWhen(
          dataFetched: (todos, showDone) => todos,
          orElse: () => [],
        );
  }

  testWidgets("Pump todos", (WidgetTester tester) async {
    await pumpTodosList(tester);
    await tester.pump(const Duration(seconds: 5));

    expect(find.byIcon(Icons.info_outline), findsWidgets);
  });

  testWidgets("Delete a todo", (WidgetTester tester) async {
    await pumpTodosList(tester);

    await tester.pump(Duration(seconds: 3));

    String targetTitle = initialTodos.first.title;
    Finder firstTodoTitle = find.textContaining(
      targetTitle,
      findRichText: true,
    );

    Finder firstTodo = find.ancestor(
      of: firstTodoTitle,
      matching: find.byType(TodosItem),
    );

    Finder firstInfoIcon = find.descendant(
        of: firstTodo, matching: find.byIcon(Icons.info_outline));

    await tester.drag(firstInfoIcon, const Offset(-500.0, 0.0));
    await tester.pumpAndSettle();

    expect(firstTodoTitle.hitTestable(), findsNothing);
  });

  testWidgets("Set finished tasks unseen and finish a task",
      (WidgetTester tester) async {
    await pumpTodosList(tester);
    getIt.get<TodosBloc>().add(const TodosEvent.hideDone());

    String targetTitle = initialTodos.first.title;
    Finder firstTodoTitle = find.textContaining(
      targetTitle,
      findRichText: true,
    );

    Finder firstTodo = find.ancestor(
      of: firstTodoTitle,
      matching: find.byType(TodosItem),
    );

    await tester.pump(const Duration(seconds: 1));

    Finder firstItemCheckbox =
        find.descendant(of: firstTodo, matching: find.byType(ItemCheckbox));

    Finder firstCheckbox =
        find.descendant(of: firstItemCheckbox, matching: find.byType(Checkbox));

    await tester.tap(firstCheckbox);
    await tester.pumpAndSettle();

    expect(firstTodoTitle.hitTestable(), findsNothing);
  });

  testWidgets("Add a task by input item", (WidgetTester tester) async {
    
    await pumpTodosList(tester);

    final list = find.byType(Scrollable);
    final inputItem = find.byType(InputItem);

    await tester.scrollUntilVisible(
      inputItem,
      500.0,
      scrollable: list,
    );

    final textInput = find.byType(TextField);

    await tester.tap(
      textInput,
      warnIfMissed: false,
    );

    //await tester.pumpAndSettle();
    await tester.showKeyboard(textInput);
    await tester.enterText(textInput, 'A new task');
    await tester.testTextInput.receiveAction(TextInputAction.done);
    await tester.pumpAndSettle(Duration(seconds: 5));

    expect(find.byIcon(Icons.info_outline), findsWidgets);
  });
}
