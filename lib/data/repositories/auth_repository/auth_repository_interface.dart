import 'dart:async';

import '../../../domain/domain.dart';

abstract class AuthRepository {
  bool get isLoggedIn;
  bool get hasSuggested;
  Future<void> setSuggested(bool value);
  Future<void> logIn(String oauthToken);
  FutureOr<void> logOut();
  User? getUser();
}
