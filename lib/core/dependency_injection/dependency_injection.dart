import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'dependency_injection.iconfig.dart';

final getIt = GetIt.instance;

@injectableInit
void initInjection(String environment) {
  $initGetIt(
    getIt,
    environment: environment,
  );
}

abstract class Env {
  static const dev = "dev";
  static const prod = "prod";
}
