// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:done/application/services/remote_config_service.dart' as _i7;
import 'package:done/data/api/todos_api.dart' as _i9;
import 'package:done/data/api/yandex_api.dart' as _i10;
import 'package:done/data/data.dart' as _i12;
import 'package:done/data/repositories/auth_repository/auth_repository.dart'
    as _i6;
import 'package:done/data/repositories/todos_repository/todos_repository.dart'
    as _i3;
import 'package:done/presentation/bloc/todos/todos_bloc.dart' as _i11;
import 'package:done/presentation/pages/login/auth_bloc/auth_bloc.dart' as _i5;
import 'package:done/presentation/ui/app_bar/bloc/app_bar_bloc.dart' as _i4;
import 'package:done/presentation/ui/theme/bloc/theme_bloc.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

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
  gh.singleton<_i3.TodosRepository>(_i3.TodosRepositoryImpl());
  gh.singleton<_i4.AppBarBloc>(_i4.AppBarBloc());
  gh.singleton<_i5.AuthBloc>(_i5.AuthBloc());
  gh.singleton<_i6.AuthRepository>(_i6.AuthRepositoryImpl());
  gh.singleton<_i7.RemoteConfigService>(_i7.RemoteConfigService());
  gh.singleton<_i8.ThemeBloc>(_i8.ThemeBloc());
  gh.singletonAsync<_i9.TodosApi>(() => _i9.TodosApi.create());
  gh.singleton<_i10.YandexApi>(_i10.YandexApi());
  gh.singleton<_i11.TodosBloc>(_i11.TodosBloc(gh<_i12.TodosRepository>()));
  return getIt;
}
