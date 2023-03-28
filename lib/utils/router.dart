import 'package:go_router/go_router.dart';

import '../pages/web/about_page.dart';
import '../pages/web/home_page.dart';
import '../pages/web/main_page.dart';
import '../pages/web/project_page.dart';

class CustomRouter {
  static const webHomePath = '/webHome';
  static const aboutPath = '/about';
  static const projectPath = '/project';

  static GoRouter router = GoRouter(
    routes: [
      ShellRoute(
        builder: (context, state, child) {
          return MainPage(
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: webHomePath,
            name: webHomePath,
            builder: (_, state) => const HomePage(),
          ),
          GoRoute(
            path: aboutPath,
            name: aboutPath,
            builder: (_, state) => const AboutPage(),
          ),
          GoRoute(
            path: projectPath,
            name: projectPath,
            builder: (_, state) => const ProjectPage(),
          )
        ],
      ),
    ],
    initialLocation: webHomePath,
  );
}
