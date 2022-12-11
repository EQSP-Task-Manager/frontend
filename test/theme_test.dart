// import 'package:done/application/application.dart';
// import 'package:done/presentation/presentation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_test/flutter_test.dart';

// void main() {
//   TestWidgetsFlutterBinding.ensureInitialized();

//   Future<void> pumpScaffold(WidgetTester tester) async {
//     await getIt.reset();
//     getIt.registerSingleton(ThemeBloc());

//     await tester.pumpWidget(
//       MaterialApp(
//         home: MultiBlocProvider(
//           providers: [
//             BlocProvider(create: (_) => getIt.get<ThemeBloc>()),
//           ],
//           child: BlocBuilder<ThemeBloc, AppTheme>(
//             builder: (context, state) => Scaffold(
//               backgroundColor: state.backPrimary,
//               body: const SizedBox(),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   testWidgets("Change theme", (WidgetTester tester) async {
//     await pumpScaffold(tester);
//     getIt.get<ThemeBloc>().add(const ThemeEvent.setDark());

//     await tester.pumpAndSettle();

//     expect(
//         (tester.firstWidget(find.byType(Scaffold)) as Scaffold).backgroundColor,
//         const Color(0xFF161618));

//     getIt.get<ThemeBloc>().add(const ThemeEvent.setLight());

//     await tester.pumpAndSettle();

//     expect(
//         (tester.firstWidget(find.byType(Scaffold)) as Scaffold).backgroundColor,
//         const Color(0xFFFCFCFC));

//     getIt.get<ThemeBloc>().add(const ThemeEvent.changeTheme());

//     await tester.pumpAndSettle();

//     expect(
//         (tester.firstWidget(find.byType(Scaffold)) as Scaffold).backgroundColor,
//         const Color(0xFF161618));

//     getIt.get<ThemeBloc>().add(const ThemeEvent.changeTheme());

//     await tester.pumpAndSettle();

//     expect(
//         (tester.firstWidget(find.byType(Scaffold)) as Scaffold).backgroundColor,
//         const Color(0xFFFCFCFC));
//   });
// }
