import 'dart:async';
import 'package:done/domain/domain.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../../application/application.dart';
import '../../data.dart';

export 'auth_repository_interface.dart';

const _user = 'user';
const _authSuggest = 'authSuggest';
const _todos = "todos";
const _lastRevision = 'lastRevision';

@Singleton(as: AuthRepository, env: [Environment.prod])
class AuthRepositoryImpl implements AuthRepository {
  final _userBox = Hive.box<User>(_user);
  final _suggestBox = Hive.box<bool>(_authSuggest);
  final _todosBox = Hive.box<Todo>(_todos);
  final _lastRevisionBox = Hive.box<int>(_lastRevision);

  @override
  bool get isLoggedIn => _userBox.isNotEmpty;

  @override
  bool get hasSuggested => _suggestBox.isNotEmpty;

  @override
  Future<void> logIn(String oauthToken) async {
    var userResponse = await getIt.get<YandexApi>().getInfo(oauthToken);
    User user = User.fromJson(
      (userResponse.data as Map<String, dynamic>)
        ..addAll(
          {'oauthToken': oauthToken},
        ),
    );
    await _userBox.add(user);
  }

  @override
  Future<void> logOut() async {
    await _todosBox.clear();
    await _lastRevisionBox.clear();
    await _userBox.clear();
  }

  @override
  User? getUser() {
    return _userBox.isEmpty ? null : _userBox.values.first;
  }

  @override
  Future<void> setSuggested(bool value) async {
    await _suggestBox.add(value);
  }
}

@Singleton(as: AuthRepository, env: [Environment.test])
class AuthRepositoryTestImpl implements AuthRepository {
  @override
  bool get isLoggedIn => true;

  @override
  bool get hasSuggested => true;

  @override
  Future<void> logIn(String oauthToken) async {}

  @override
  Future<void> logOut() async {}

  @override
  User? getUser() {
    return null;
  }

  @override
  Future<void> setSuggested(bool value) async {}
}
