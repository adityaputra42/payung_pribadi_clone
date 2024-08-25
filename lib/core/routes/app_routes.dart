import 'package:go_router/go_router.dart';
import 'package:payung_pribadi_clone/features/profile/presentation/pages/informasi_pribadi.dart';
import 'package:payung_pribadi_clone/features/profile/presentation/pages/profile_screen.dart';
import 'package:payung_pribadi_clone/features/splash/page/splash_screen.dart';

import '../../features/dasboard/pages/dashboard_page.dart';

class AppRoutes {
  static AppRoutes instance = AppRoutes();
  route() {
    return GoRouter(
      routes: [
        GoRoute(
          path: '/',
          name: 'splah',
          builder: (context, state) => const SplashScreen(),
        ),
        GoRoute(
            path: '/main',
            name: 'main',
            builder: (context, state) => const DashboardPage(),
            routes: [
              GoRoute(
                  path: 'profile',
                  name: 'profile',
                  builder: (context, state) => const ProfileScreen(),
                  routes: [
                    GoRoute(
                      path: 'informasi_pribadi',
                      name: 'informasi_pribadi',
                      builder: (context, state) => const InformasiPribadi(),
                    ),
                  ]),
            ]),
      ],
      initialLocation: '/',
      debugLogDiagnostics: true,
    );
  }
}
