// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:done/application/application.dart' as _i10;
import 'package:done/application/services/fake_config_service.dart' as _i11;
import 'package:done/application/services/remote_config_service.dart' as _i12;
import 'package:done/data/api/todos_api.dart' as _i9;
import 'package:done/data/api/yandex_api.dart' as _i14;
import 'package:done/data/data.dart' as _i3;
import 'package:done/data/repositories/auth_repository/auth_repository.dart'
    as _i8;
import 'package:done/data/repositories/todos_repository/fake_todos_repsitory.dart'
    as _i4;
import 'package:done/data/repositories/todos_repository/todos_repository.dart'
    as _i5;
import 'package:done/presentation/bloc/todos/todos_bloc.dart' as _i15;
import 'package:done/presentation/pages/login/auth_bloc/auth_bloc.dart' as _i7;
import 'package:done/presentation/ui/app_bar/bloc/app_bar_bloc.dart' as _i6;
import 'package:done/presentation/ui/theme/bloc/theme_bloc.dart' as _i13;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

const String _test = 'test';
const String _prod = 'prod';

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );

  gh.singleton<_i6.AppBarBloc>(_i6.AppBarBloc());
  gh.singleton<_i7.AuthBloc>(_i7.AuthBloc());
  gh.singleton<_i13.ThemeBloc>(_i13.ThemeBloc());

  if (environment == _test) {
    gh.singleton<_i3.TodosRepository>(
      _i4.FakeTodosRepsitoryImpl(),
      registerFor: {_test},
    );
    gh.singleton<_i8.AuthRepository>(
      _i8.AuthRepositoryTestImpl(),
      registerFor: {_test},
    );
    gh.singleton<_i10.RemoteConfigService>(
      _i11.FakeConfigService(),
      registerFor: {_test},
    );
    gh.singleton<_i9.FakeTodosApi>(
      _i9.FakeTodosApi(),
      registerFor: {_test},
    );
  }
  if (environment == _prod) {
    gh.singleton<_i5.TodosRepository>(
      _i5.TodosRepositoryImpl(),
      registerFor: {_prod},
    );
    gh.singleton<_i8.AuthRepository>(
      _i8.AuthRepositoryImpl(),
      registerFor: {_prod},
    );
    gh.singleton<_i12.RemoteConfigService>(
      _i12.RemoteConfigService(),
      registerFor: {_prod},
    );
    gh.singletonAsync<_i9.TodosApi>(
      () => _i9.TodosApi.create(),
      registerFor: {_prod},
    );
  }
  gh.singleton<_i14.YandexApi>(_i14.YandexApi());
  gh.singleton<_i15.TodosBloc>(_i15.TodosBloc(gh<_i3.TodosRepository>()));
  return getIt;
}
