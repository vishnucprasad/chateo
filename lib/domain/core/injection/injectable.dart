import 'package:chateo/application/auth/auth_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injectable.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
Future<void> configureInjection(String env) async {
  getIt.registerSingleton<AuthBloc>(AuthBloc());
  getIt.init(environment: env);
}
