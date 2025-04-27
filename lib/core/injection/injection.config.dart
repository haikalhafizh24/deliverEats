// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:deliver_eats/application/sign_in/sign_in_cubit.dart' as _i327;
import 'package:deliver_eats/core/env/env.dart' as _i952;
import 'package:deliver_eats/core/routes/app_router.dart' as _i271;
import 'package:deliver_eats/core/utils/register_module.dart' as _i825;
import 'package:deliver_eats/domain/auth/i_auth_repository.dart' as _i1029;
import 'package:deliver_eats/infrastructure/auth/data_source/auth_data_source.dart'
    as _i501;
import 'package:deliver_eats/infrastructure/auth/repository/mock_auth_repository.dart'
    as _i530;
import 'package:deliver_eats/infrastructure/core/api_helper.dart' as _i620;
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:logger/logger.dart' as _i974;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i952.Env>(() => _i952.Env());
    gh.singleton<_i271.AppRouter>(() => registerModule.appRouter);
    gh.lazySingleton<_i974.Logger>(() => registerModule.logger);
    gh.lazySingleton<_i1029.IAuthRepository>(() => _i530.MockAuthRepository());
    gh.factory<_i327.SignInCubit>(
        () => _i327.SignInCubit(gh<_i1029.IAuthRepository>()));
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio(gh<_i952.Env>()));
    gh.lazySingleton<_i620.ApiHelper>(() => _i620.ApiHelper(gh<_i361.Dio>()));
    gh.factory<_i501.AuthDataSource>(
        () => _i501.AuthDataSource(gh<_i620.ApiHelper>()));
    return this;
  }
}

class _$RegisterModule extends _i825.RegisterModule {}
