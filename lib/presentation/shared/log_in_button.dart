import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../application/application.dart';
import '../presentation.dart';

class LogInButton extends StatelessWidget {
  const LogInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, AppTheme>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            getIt.get<AuthBloc>().add(const AuthEvent.requestLogin());
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 56,
            decoration: BoxDecoration(
              color: getIt.get<ThemeBloc>().currentTheme.backSecondary,
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              border: getIt.get<ThemeBloc>().currentTheme is LightTheme
                  ? Border.all(
                      color: getIt.get<ThemeBloc>().currentTheme.labelPrimary)
                  : null,
            ),
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    Localizations.localeOf(context) == const Locale('ru', 'RU')
                        ? 'assets/yandex_logo_rus.svg'
                        : 'assets/yandex_logo_eng.svg',
                  ),
                  const SizedBox(width: 12),
                  SvgPicture.asset(
                    Localizations.localeOf(context) == const Locale('ru', 'RU')
                        ? 'assets/yandex_text_rus.svg'
                        : 'assets/yandex_text_eng.svg',
                    color: getIt.get<ThemeBloc>().currentTheme.labelPrimary,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
