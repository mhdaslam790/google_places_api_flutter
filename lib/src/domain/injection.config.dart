// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:google_places_api_flutter/src/domain/google_api/i_google_api_facade.dart'
    as _i736;
import 'package:google_places_api_flutter/src/google_api/googl_api_bloc.dart'
    as _i933;
import 'package:google_places_api_flutter/src/infrastructure/google_api_facade.dart'
    as _i833;
import 'package:injectable/injectable.dart' as _i526;

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
    gh.lazySingleton<_i736.IGoogleApiFacade>(() => _i833.GoogleApiFacade());
    gh.factory<_i933.GooglApiBloc>(
        () => _i933.GooglApiBloc(gh<_i736.IGoogleApiFacade>()));
    return this;
  }
}
