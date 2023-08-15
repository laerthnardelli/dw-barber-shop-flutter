import 'package:asyncstate/observers/async_navigator_observer.dart';
import 'package:asyncstate/widget/async_state_builder.dart';
import 'package:flutter/material.dart';

import 'features/splash/splash_page.dart';

class BarbershopApp extends StatelessWidget {
  const BarbershopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AsyncStateBuilder(
      builder: (asyncNavigatorObserver) {
        return MaterialApp(
          title: 'DW Barbershop',
          navigatorObservers: [asyncNavigatorObserver],
          routes: {
            '/': (_) => const SplashPage(),
          },
        );
      },
    );
  }
}
