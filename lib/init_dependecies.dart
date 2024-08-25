import 'package:get_it/get_it.dart';
import 'package:payung_pribadi_clone/core/common/cubits/app_user/app_user_cubit.dart';
import 'package:payung_pribadi_clone/core/db/db_config.dart';
import 'package:payung_pribadi_clone/core/utils/pref_helper.dart';
import 'package:payung_pribadi_clone/features/dasboard/bloc/dashboard_bloc.dart';
import 'package:payung_pribadi_clone/features/profile/presentation/bloc/profile_bloc.dart';

import 'package:payung_pribadi_clone/features/splash/bloc/splash_bloc.dart';
import 'package:payung_pribadi_clone/features/wellness/presentation/bloc/wellness_bloc.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependencies() async {
  PrefHelper.instance.init();
  DbConfig.instance.onInit();
  serviceLocator.registerLazySingleton(
    () => AppUserCubit(),
  );
  serviceLocator.registerLazySingleton(
    () => SplashBloc(),
  );
  serviceLocator.registerLazySingleton(
    () => DashboardBloc(),
  );
  serviceLocator.registerLazySingleton(
    () => WellnessBloc(),
  );
  serviceLocator.registerLazySingleton(
    () => ProfileBloc(),
  );
}
