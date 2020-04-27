import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'core/app_settings.dart';
import 'core/dependency_injection/dependency_injection.dart' as di;
import 'core/router/router.gr.dart';

void main() {
  di.initInjection(di.Env.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppSettings.appName,
      builder: ExtendedNavigator<Router>(
        router: Router(),
      ),
    );
  }
}
