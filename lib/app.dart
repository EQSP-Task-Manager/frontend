import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shake/shake.dart';
import 'package:done/application/get_it/get_it_service_locator.dart';
import 'package:done/presentation/presentation.dart';
import 'package:uni_links/uni_links.dart';

bool _initialUriIsHandled = false;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _handleInitialUri();
    _handleIncomingLinks();
    ShakeDetector.autoStart(
      onPhoneShake: () {
        getIt.get<ThemeBloc>().add(const ThemeEvent.changeTheme());
      },
    );
  }

  Future<void> _handleInitialUri() async {
    if (!_initialUriIsHandled) {
      _initialUriIsHandled = true;
      try {
        final uri = await getInitialUri();
        if (uri != null) {
          switch (uri.pathSegments[0]) {
            case 'add':
              goRouter.pushNamed('TodoSettingsPage');
              break;
            case 'edit':
              if (uri.pathSegments.length > 1) {
                goRouter.pushNamed('TodoSettingsPage',
                    params: {'todo_id': uri.pathSegments[1]});
              }
              break;
          }
        }
      } on PlatformException {
        debugPrint('falied to get initial uri');
      } on FormatException catch (_) {
        if (!mounted) return;
        debugPrint('malformed initial uri');
      }
    }
  }

  late StreamSubscription _sub;
  Future<void> _handleIncomingLinks() async {
    _sub = uriLinkStream.listen((Uri? uri) async {
      if (uri != null) {
        String firstSegment = uri.pathSegments[0];

        if (firstSegment == 'add') {
          goRouter.pushNamed('TodoSettingsPage');
        }
      }
    }, onError: (err) {});
  }

  @override
  void dispose() {
    _sub.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<TodosBloc>()),
        BlocProvider(create: (_) => getIt.get<AuthBloc>()),
        BlocProvider(create: (_) => getIt.get<ThemeBloc>()),
        BlocProvider(create: (_) => getIt.get<AppBarBloc>()),
      ],
      child: BlocBuilder<ThemeBloc, AppTheme>(
        builder: (context, themeState) {
          return MaterialApp.router(
            routerConfig: goRouter,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            theme: themeState.themeData,
          );
        },
      ),
    );
  }
}
