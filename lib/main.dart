import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payung_pribadi_clone/features/dasboard/bloc/dashboard_bloc.dart';
import 'package:payung_pribadi_clone/features/profile/presentation/bloc/profile_bloc.dart';

import 'package:payung_pribadi_clone/features/splash/bloc/splash_bloc.dart';
import 'package:payung_pribadi_clone/features/wellness/presentation/bloc/wellness_bloc.dart';
import 'core/routes/app_routes.dart';
import 'core/theme/style.dart';
import 'init_dependecies.dart';

void main() async {
  await initDependencies();
  runApp(MultiBlocProvider(providers: [
    BlocProvider(
      create: (_) => serviceLocator<SplashBloc>(),
    ),
    BlocProvider(
      create: (_) => serviceLocator<DashboardBloc>(),
    ),
    BlocProvider(
      create: (_) => serviceLocator<WellnessBloc>(),
    ),
    BlocProvider(
      create: (_) => serviceLocator<ProfileBloc>(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes.instance.route(),
      title: 'Payung Pribadi Clone',
      debugShowCheckedModeBanner: false,
      theme: Styles.themeData(false, context),
    );
  }
}
