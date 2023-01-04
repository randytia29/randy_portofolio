import 'package:go_router/go_router.dart';
import 'package:randy_portofolio/ui/page/about_page.dart';
import 'package:randy_portofolio/ui/page/home_page.dart';
import 'package:randy_portofolio/ui/page/main_page.dart';
import 'package:randy_portofolio/ui/page/project_page.dart';

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
