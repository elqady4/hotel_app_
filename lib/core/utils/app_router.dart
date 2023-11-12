
import 'package:go_router/go_router.dart';
import 'package:hotel_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:hotel_app/Features/home/presentation/views/home_screen.dart';
import 'package:hotel_app/constants.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';

  static final router = GoRouter(
    routes: [
     GoRoute(
        path: kSplashView,
        builder: (context, state) => const SplashView(),
      ),
     GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
