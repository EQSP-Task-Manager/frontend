// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestLogin,
    required TResult Function() requestLogout,
    required TResult Function() notifyLoggedIn,
    required TResult Function() notifyLoginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestLogin,
    TResult Function()? requestLogout,
    TResult Function()? notifyLoggedIn,
    TResult Function()? notifyLoginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestLogin,
    TResult Function()? requestLogout,
    TResult Function()? notifyLoggedIn,
    TResult Function()? notifyLoginFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestLogin value) requestLogin,
    required TResult Function(_RequestLogout value) requestLogout,
    required TResult Function(_NotifyLoggedIn value) notifyLoggedIn,
    required TResult Function(_NotifyLoginFailed value) notifyLoginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestLogin value)? requestLogin,
    TResult Function(_RequestLogout value)? requestLogout,
    TResult Function(_NotifyLoggedIn value)? notifyLoggedIn,
    TResult Function(_NotifyLoginFailed value)? notifyLoginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestLogin value)? requestLogin,
    TResult Function(_RequestLogout value)? requestLogout,
    TResult Function(_NotifyLoggedIn value)? notifyLoggedIn,
    TResult Function(_NotifyLoginFailed value)? notifyLoginFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class _$$_RequestLoginCopyWith<$Res> {
  factory _$$_RequestLoginCopyWith(
          _$_RequestLogin value, $Res Function(_$_RequestLogin) then) =
      __$$_RequestLoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RequestLoginCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_RequestLoginCopyWith<$Res> {
  __$$_RequestLoginCopyWithImpl(
      _$_RequestLogin _value, $Res Function(_$_RequestLogin) _then)
      : super(_value, (v) => _then(v as _$_RequestLogin));

  @override
  _$_RequestLogin get _value => super._value as _$_RequestLogin;
}

/// @nodoc

class _$_RequestLogin implements _RequestLogin {
  const _$_RequestLogin();

  @override
  String toString() {
    return 'AuthEvent.requestLogin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RequestLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestLogin,
    required TResult Function() requestLogout,
    required TResult Function() notifyLoggedIn,
    required TResult Function() notifyLoginFailed,
  }) {
    return requestLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestLogin,
    TResult Function()? requestLogout,
    TResult Function()? notifyLoggedIn,
    TResult Function()? notifyLoginFailed,
  }) {
    return requestLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestLogin,
    TResult Function()? requestLogout,
    TResult Function()? notifyLoggedIn,
    TResult Function()? notifyLoginFailed,
    required TResult orElse(),
  }) {
    if (requestLogin != null) {
      return requestLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestLogin value) requestLogin,
    required TResult Function(_RequestLogout value) requestLogout,
    required TResult Function(_NotifyLoggedIn value) notifyLoggedIn,
    required TResult Function(_NotifyLoginFailed value) notifyLoginFailed,
  }) {
    return requestLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestLogin value)? requestLogin,
    TResult Function(_RequestLogout value)? requestLogout,
    TResult Function(_NotifyLoggedIn value)? notifyLoggedIn,
    TResult Function(_NotifyLoginFailed value)? notifyLoginFailed,
  }) {
    return requestLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestLogin value)? requestLogin,
    TResult Function(_RequestLogout value)? requestLogout,
    TResult Function(_NotifyLoggedIn value)? notifyLoggedIn,
    TResult Function(_NotifyLoginFailed value)? notifyLoginFailed,
    required TResult orElse(),
  }) {
    if (requestLogin != null) {
      return requestLogin(this);
    }
    return orElse();
  }
}

abstract class _RequestLogin implements AuthEvent {
  const factory _RequestLogin() = _$_RequestLogin;
}

/// @nodoc
abstract class _$$_RequestLogoutCopyWith<$Res> {
  factory _$$_RequestLogoutCopyWith(
          _$_RequestLogout value, $Res Function(_$_RequestLogout) then) =
      __$$_RequestLogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RequestLogoutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_RequestLogoutCopyWith<$Res> {
  __$$_RequestLogoutCopyWithImpl(
      _$_RequestLogout _value, $Res Function(_$_RequestLogout) _then)
      : super(_value, (v) => _then(v as _$_RequestLogout));

  @override
  _$_RequestLogout get _value => super._value as _$_RequestLogout;
}

/// @nodoc

class _$_RequestLogout implements _RequestLogout {
  const _$_RequestLogout();

  @override
  String toString() {
    return 'AuthEvent.requestLogout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RequestLogout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestLogin,
    required TResult Function() requestLogout,
    required TResult Function() notifyLoggedIn,
    required TResult Function() notifyLoginFailed,
  }) {
    return requestLogout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestLogin,
    TResult Function()? requestLogout,
    TResult Function()? notifyLoggedIn,
    TResult Function()? notifyLoginFailed,
  }) {
    return requestLogout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestLogin,
    TResult Function()? requestLogout,
    TResult Function()? notifyLoggedIn,
    TResult Function()? notifyLoginFailed,
    required TResult orElse(),
  }) {
    if (requestLogout != null) {
      return requestLogout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestLogin value) requestLogin,
    required TResult Function(_RequestLogout value) requestLogout,
    required TResult Function(_NotifyLoggedIn value) notifyLoggedIn,
    required TResult Function(_NotifyLoginFailed value) notifyLoginFailed,
  }) {
    return requestLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestLogin value)? requestLogin,
    TResult Function(_RequestLogout value)? requestLogout,
    TResult Function(_NotifyLoggedIn value)? notifyLoggedIn,
    TResult Function(_NotifyLoginFailed value)? notifyLoginFailed,
  }) {
    return requestLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestLogin value)? requestLogin,
    TResult Function(_RequestLogout value)? requestLogout,
    TResult Function(_NotifyLoggedIn value)? notifyLoggedIn,
    TResult Function(_NotifyLoginFailed value)? notifyLoginFailed,
    required TResult orElse(),
  }) {
    if (requestLogout != null) {
      return requestLogout(this);
    }
    return orElse();
  }
}

abstract class _RequestLogout implements AuthEvent {
  const factory _RequestLogout() = _$_RequestLogout;
}

/// @nodoc
abstract class _$$_NotifyLoggedInCopyWith<$Res> {
  factory _$$_NotifyLoggedInCopyWith(
          _$_NotifyLoggedIn value, $Res Function(_$_NotifyLoggedIn) then) =
      __$$_NotifyLoggedInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NotifyLoggedInCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_NotifyLoggedInCopyWith<$Res> {
  __$$_NotifyLoggedInCopyWithImpl(
      _$_NotifyLoggedIn _value, $Res Function(_$_NotifyLoggedIn) _then)
      : super(_value, (v) => _then(v as _$_NotifyLoggedIn));

  @override
  _$_NotifyLoggedIn get _value => super._value as _$_NotifyLoggedIn;
}

/// @nodoc

class _$_NotifyLoggedIn implements _NotifyLoggedIn {
  const _$_NotifyLoggedIn();

  @override
  String toString() {
    return 'AuthEvent.notifyLoggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NotifyLoggedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestLogin,
    required TResult Function() requestLogout,
    required TResult Function() notifyLoggedIn,
    required TResult Function() notifyLoginFailed,
  }) {
    return notifyLoggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestLogin,
    TResult Function()? requestLogout,
    TResult Function()? notifyLoggedIn,
    TResult Function()? notifyLoginFailed,
  }) {
    return notifyLoggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestLogin,
    TResult Function()? requestLogout,
    TResult Function()? notifyLoggedIn,
    TResult Function()? notifyLoginFailed,
    required TResult orElse(),
  }) {
    if (notifyLoggedIn != null) {
      return notifyLoggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestLogin value) requestLogin,
    required TResult Function(_RequestLogout value) requestLogout,
    required TResult Function(_NotifyLoggedIn value) notifyLoggedIn,
    required TResult Function(_NotifyLoginFailed value) notifyLoginFailed,
  }) {
    return notifyLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestLogin value)? requestLogin,
    TResult Function(_RequestLogout value)? requestLogout,
    TResult Function(_NotifyLoggedIn value)? notifyLoggedIn,
    TResult Function(_NotifyLoginFailed value)? notifyLoginFailed,
  }) {
    return notifyLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestLogin value)? requestLogin,
    TResult Function(_RequestLogout value)? requestLogout,
    TResult Function(_NotifyLoggedIn value)? notifyLoggedIn,
    TResult Function(_NotifyLoginFailed value)? notifyLoginFailed,
    required TResult orElse(),
  }) {
    if (notifyLoggedIn != null) {
      return notifyLoggedIn(this);
    }
    return orElse();
  }
}

abstract class _NotifyLoggedIn implements AuthEvent {
  const factory _NotifyLoggedIn() = _$_NotifyLoggedIn;
}

/// @nodoc
abstract class _$$_NotifyLoginFailedCopyWith<$Res> {
  factory _$$_NotifyLoginFailedCopyWith(_$_NotifyLoginFailed value,
          $Res Function(_$_NotifyLoginFailed) then) =
      __$$_NotifyLoginFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NotifyLoginFailedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements _$$_NotifyLoginFailedCopyWith<$Res> {
  __$$_NotifyLoginFailedCopyWithImpl(
      _$_NotifyLoginFailed _value, $Res Function(_$_NotifyLoginFailed) _then)
      : super(_value, (v) => _then(v as _$_NotifyLoginFailed));

  @override
  _$_NotifyLoginFailed get _value => super._value as _$_NotifyLoginFailed;
}

/// @nodoc

class _$_NotifyLoginFailed implements _NotifyLoginFailed {
  const _$_NotifyLoginFailed();

  @override
  String toString() {
    return 'AuthEvent.notifyLoginFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NotifyLoginFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestLogin,
    required TResult Function() requestLogout,
    required TResult Function() notifyLoggedIn,
    required TResult Function() notifyLoginFailed,
  }) {
    return notifyLoginFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? requestLogin,
    TResult Function()? requestLogout,
    TResult Function()? notifyLoggedIn,
    TResult Function()? notifyLoginFailed,
  }) {
    return notifyLoginFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestLogin,
    TResult Function()? requestLogout,
    TResult Function()? notifyLoggedIn,
    TResult Function()? notifyLoginFailed,
    required TResult orElse(),
  }) {
    if (notifyLoginFailed != null) {
      return notifyLoginFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestLogin value) requestLogin,
    required TResult Function(_RequestLogout value) requestLogout,
    required TResult Function(_NotifyLoggedIn value) notifyLoggedIn,
    required TResult Function(_NotifyLoginFailed value) notifyLoginFailed,
  }) {
    return notifyLoginFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_RequestLogin value)? requestLogin,
    TResult Function(_RequestLogout value)? requestLogout,
    TResult Function(_NotifyLoggedIn value)? notifyLoggedIn,
    TResult Function(_NotifyLoginFailed value)? notifyLoginFailed,
  }) {
    return notifyLoginFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestLogin value)? requestLogin,
    TResult Function(_RequestLogout value)? requestLogout,
    TResult Function(_NotifyLoggedIn value)? notifyLoggedIn,
    TResult Function(_NotifyLoginFailed value)? notifyLoginFailed,
    required TResult orElse(),
  }) {
    if (notifyLoginFailed != null) {
      return notifyLoginFailed(this);
    }
    return orElse();
  }
}

abstract class _NotifyLoginFailed implements AuthEvent {
  const factory _NotifyLoginFailed() = _$_NotifyLoginFailed;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loginFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoginFailed value) loginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoginFailed value)? loginFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loginFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loginFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loginFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoginFailed value) loginFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoginFailed value)? loginFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoggingInCopyWith<$Res> {
  factory _$$_LoggingInCopyWith(
          _$_LoggingIn value, $Res Function(_$_LoggingIn) then) =
      __$$_LoggingInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoggingInCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_LoggingInCopyWith<$Res> {
  __$$_LoggingInCopyWithImpl(
      _$_LoggingIn _value, $Res Function(_$_LoggingIn) _then)
      : super(_value, (v) => _then(v as _$_LoggingIn));

  @override
  _$_LoggingIn get _value => super._value as _$_LoggingIn;
}

/// @nodoc

class _$_LoggingIn implements _LoggingIn {
  const _$_LoggingIn();

  @override
  String toString() {
    return 'AuthState.loggingIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoggingIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loginFailed,
  }) {
    return loggingIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loginFailed,
  }) {
    return loggingIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loginFailed,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoginFailed value) loginFailed,
  }) {
    return loggingIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoginFailed value)? loginFailed,
  }) {
    return loggingIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) {
    if (loggingIn != null) {
      return loggingIn(this);
    }
    return orElse();
  }
}

abstract class _LoggingIn implements AuthState {
  const factory _LoggingIn() = _$_LoggingIn;
}

/// @nodoc
abstract class _$$_LoggedInCopyWith<$Res> {
  factory _$$_LoggedInCopyWith(
          _$_LoggedIn value, $Res Function(_$_LoggedIn) then) =
      __$$_LoggedInCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoggedInCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_LoggedInCopyWith<$Res> {
  __$$_LoggedInCopyWithImpl(
      _$_LoggedIn _value, $Res Function(_$_LoggedIn) _then)
      : super(_value, (v) => _then(v as _$_LoggedIn));

  @override
  _$_LoggedIn get _value => super._value as _$_LoggedIn;
}

/// @nodoc

class _$_LoggedIn implements _LoggedIn {
  const _$_LoggedIn();

  @override
  String toString() {
    return 'AuthState.loggedIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoggedIn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loginFailed,
  }) {
    return loggedIn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loginFailed,
  }) {
    return loggedIn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loginFailed,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoginFailed value) loginFailed,
  }) {
    return loggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoginFailed value)? loginFailed,
  }) {
    return loggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) {
    if (loggedIn != null) {
      return loggedIn(this);
    }
    return orElse();
  }
}

abstract class _LoggedIn implements AuthState {
  const factory _LoggedIn() = _$_LoggedIn;
}

/// @nodoc
abstract class _$$_LoggedOutCopyWith<$Res> {
  factory _$$_LoggedOutCopyWith(
          _$_LoggedOut value, $Res Function(_$_LoggedOut) then) =
      __$$_LoggedOutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoggedOutCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_LoggedOutCopyWith<$Res> {
  __$$_LoggedOutCopyWithImpl(
      _$_LoggedOut _value, $Res Function(_$_LoggedOut) _then)
      : super(_value, (v) => _then(v as _$_LoggedOut));

  @override
  _$_LoggedOut get _value => super._value as _$_LoggedOut;
}

/// @nodoc

class _$_LoggedOut implements _LoggedOut {
  const _$_LoggedOut();

  @override
  String toString() {
    return 'AuthState.loggedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoggedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loginFailed,
  }) {
    return loggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loginFailed,
  }) {
    return loggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loginFailed,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoginFailed value) loginFailed,
  }) {
    return loggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoginFailed value)? loginFailed,
  }) {
    return loggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) {
    if (loggedOut != null) {
      return loggedOut(this);
    }
    return orElse();
  }
}

abstract class _LoggedOut implements AuthState {
  const factory _LoggedOut() = _$_LoggedOut;
}

/// @nodoc
abstract class _$$_LoginFailedCopyWith<$Res> {
  factory _$$_LoginFailedCopyWith(
          _$_LoginFailed value, $Res Function(_$_LoginFailed) then) =
      __$$_LoginFailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginFailedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_LoginFailedCopyWith<$Res> {
  __$$_LoginFailedCopyWithImpl(
      _$_LoginFailed _value, $Res Function(_$_LoginFailed) _then)
      : super(_value, (v) => _then(v as _$_LoginFailed));

  @override
  _$_LoginFailed get _value => super._value as _$_LoginFailed;
}

/// @nodoc

class _$_LoginFailed implements _LoginFailed {
  const _$_LoginFailed();

  @override
  String toString() {
    return 'AuthState.loginFailed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginFailed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loggingIn,
    required TResult Function() loggedIn,
    required TResult Function() loggedOut,
    required TResult Function() loginFailed,
  }) {
    return loginFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loginFailed,
  }) {
    return loginFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loggingIn,
    TResult Function()? loggedIn,
    TResult Function()? loggedOut,
    TResult Function()? loginFailed,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoggingIn value) loggingIn,
    required TResult Function(_LoggedIn value) loggedIn,
    required TResult Function(_LoggedOut value) loggedOut,
    required TResult Function(_LoginFailed value) loginFailed,
  }) {
    return loginFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoginFailed value)? loginFailed,
  }) {
    return loginFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoggingIn value)? loggingIn,
    TResult Function(_LoggedIn value)? loggedIn,
    TResult Function(_LoggedOut value)? loggedOut,
    TResult Function(_LoginFailed value)? loginFailed,
    required TResult orElse(),
  }) {
    if (loginFailed != null) {
      return loginFailed(this);
    }
    return orElse();
  }
}

abstract class _LoginFailed implements AuthState {
  const factory _LoginFailed() = _$_LoginFailed;
}
