import 'dart:async';
import 'package:done/domain/domain.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../../application/application.dart';
import '../../data.dart';

export 'auth_repository_interface.dart';

const _user = 'user';
const _authSuggest = 'authSuggest';

@Singleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final _userBox = Hive.box<User>(_user);
  final _suggestBox = Hive.box<bool>(_authSuggest);

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