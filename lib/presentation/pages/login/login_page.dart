import 'package:done/data/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/application.dart';
import '../../presentation.dart';

export 'auth_bloc/auth_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void deactivate() {
    if (!getIt.get<AuthRepository>().hasSuggested) {
      getIt.get<AuthRepository>().setSuggested(false);
    }
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.whenOrNull(
          loggedIn: () {
            getIt.get<AuthRepository>().setSuggested(true);
            goRouter.go('/');
          },
        );
      },
      builder: (context, state) {
        return Material(
          child: Container(
            color: Colors.white,
            padding:
                const EdgeInsets.symmetric(horizontal: 20).copyWith(bottom: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  S.of(context).welcome,
                  style: Theme.of(context).textTheme.title,
                ),
                const SizedBox(height: 20),
                Text(
                  S.of(context).authSuggestion,
                  style: Theme.of(context).textTheme.body,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Text(
                  S.of(context).youCanStillUseApp,
                  style: Theme.of(context)
                      .textTheme
                      .body
                      .copyWith(fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const LogInButton(),
              ],
            ),
          ),
        );
      },
    );
  }
}
