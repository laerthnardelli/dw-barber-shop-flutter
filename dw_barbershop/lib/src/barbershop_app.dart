import 'package:asyncstate/widget/async_state_builder.dart';
import 'package:dw_barbershop/src/features/auth/login/login_page.dart';
import 'package:flutter/material.dart';

import 'core/ui/barbershop_nav_global_key.dart';
import 'core/ui/widgets/barbershop_loader.dart';
import 'core/ui/barbershop_theme.dart';
import 'features/home/adm/home_adm_page.dart';
import 'features/register/barbershop/barbershop_register_page.dart';
import 'features/register/user/user_register_page.dart';

import 'features/splash/splash_page.dart';

class BarbershopApp extends StatelessWidget {
  const BarbershopApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AsyncStateBuilder(
      customLoader: const BarbershopLoader(),
      builder: (asyncNavigatorObserver) {
        return MaterialApp(
          title: 'DW Barbershop',
          theme: BarbershopTheme.themeData,
          navigatorObservers: [asyncNavigatorObserver],
          navigatorKey: BarbershopNavGlobalKey.instance.navKey,
          routes: {
            '/': (_) => const SplashPage(),
            '/auth/login': (_) => const LoginPage(),
            '/auth/register/user': (_) => const UserRegisterPage(),
            '/auth/register/barbershop': (_) => const BarbershopRegisterPage(),
            '/home/adm': (_) => const HomeAdmPage(),
            '/home/employee': (_) => const Text('Employee'),
          },
        );
      },
    );
  }
}
