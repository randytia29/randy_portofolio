import 'package:go_router/go_router.dart';
import 'package:randy_portofolio/pages/about_page.dart';
import 'package:randy_portofolio/pages/home_page.dart';
import 'package:randy_portofolio/pages/main_page.dart';
import 'package:randy_portofolio/pages/project_page.dart';

class CustomRouter {
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
            path: '/',
            name: 'home',
            builder: (_, state) => const HomePage(),
          ),
          GoRoute(
            path: '/about',
            name: 'about',
            builder: (_, state) => const AboutPage(),
          ),
          GoRoute(
            path: '/project',
            name: 'project',
            builder: (_, state) => const ProjectPage(),
          )
        ],
      ),
    ],
    initialLocation: '/',
  );
}
