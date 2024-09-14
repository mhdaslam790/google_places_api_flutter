import 'package:get_it/get_it.dart';
import 'package:google_places_api_flutter/src/domain/injection.config.dart';
import 'package:injectable/injectable.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
void configureInjection(String env) {
  getIt.allowReassignment = true;
  getIt.init(
    environment: env,
  );
}
