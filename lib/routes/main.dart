import 'package:go_router/go_router.dart';
import '../modules/auth/main.dart';
import '../modules/home/main.dart';

class SystemRouter {
  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/',
        builder: (context, state) => const Auth(),
      ),
    ],
  );

  get() {
    return _router;
  }
}
