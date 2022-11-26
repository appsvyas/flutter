import 'package:go_router/go_router.dart';
import 'package:selfsea/modules/video/main.dart';
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
      GoRoute(
        path: '/video',
        builder: (context, state) => const VideoApp(),
      ),
    ],
  );

  get() {
    return _router;
  }
}
