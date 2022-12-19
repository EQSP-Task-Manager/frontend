import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uni_links/uni_links.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../application/application.dart';
import '../../../../data/data.dart';

part 'auth_bloc.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.requestLogin() = _RequestLogin;

  const factory AuthEvent.requestLogout() = _RequestLogout;

  const factory AuthEvent.notifyLoggedIn() = _NotifyLoggedIn;

  const factory AuthEvent.notifyLoginFailed() = _NotifyLoginFailed;
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;

  const factory AuthState.loggingIn() = _LoggingIn;

  const factory AuthState.loggedIn() = _LoggedIn;

  const factory AuthState.loggedOut() = _LoggedOut;

  const factory AuthState.loginFailed() = _LoginFailed;
}

@Singleton()
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  late StreamSubscription _authSub;

  AuthBloc() : super(const _Initial()) {
    on<_RequestLogin>(_requestLogin);
    on<_RequestLogout>(_requestLogout);
    on<_NotifyLoginFailed>(
      (event, emit) {
        emit(const AuthState.loginFailed());
        _authSub.cancel();
      },
    );
    on<_NotifyLoggedIn>(
      (event, emit) async {
        emit(const AuthState.loggedIn());
        _authSub.cancel();
      },
    );
  }

  void _requestLogin(_RequestLogin event, emit) {
    emit(const AuthState.loggingIn());
    _launchUrl();
    _authSub = _authStream;
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(
      Uri.parse(
          'https://oauth.yandex.ru/authorize?response_type=token&client_id=26826a430e2b4f3b8f8c002d8794f371'),
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch';
    }
  }

  void _requestLogout(_RequestLogout event, emit) async {
    await getIt.get<AuthRepository>().logOut();
    emit(const AuthState.loggedOut());
  }

  StreamSubscription<Uri?> get _authStream => uriLinkStream.listen(
        (Uri? uri) async {
          if (uri != null) {
            String firstSegment = uri.pathSegments[0];
            if (firstSegment == 'auth') {
              var path = uri.toString();

              try {
                var oauthToken = path
                    .substring(path.indexOf('#') + 1)
                    .split('&')
                    .map((e) => e.split('='))
                    .where((e) => e[0] == 'access_token')
                    .first[1];

                await getIt.get<AuthRepository>().logIn(oauthToken);

                add(const AuthEvent.notifyLoggedIn());
              } catch (e) {
                add(const AuthEvent.notifyLoginFailed());
              }
            }
          }
        },
        onError: (err) {
          add(const AuthEvent.notifyLoginFailed());
        },
      );
}
