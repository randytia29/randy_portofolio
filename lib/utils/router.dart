import 'package:go_router/go_router.dart';

import '../pages/mobile/pwa_home_page.dart';

class CustomRouter {
  static const webHomePath = '/webHome';
  static const aboutPath = '/about';
  static const projectPath = '/project';

  static const pwaPath = '/';

  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: pwaPath,
        name: pwaPath,
        builder: (_, state) => const PwaHomePage(),
      ),
    ],
    initialLocation: pwaPath,
  );

  // static GoRouter router = GoRouter(
  //   routes: [
  //     ShellRoute(
  //       builder: (context, state, child) {
  //         return MainPage(
  //           child: child,
  //         );
  //       },
  //       routes: [
  //         GoRoute(
  //           path: webHomePath,
  //           name: webHomePath,
  //           builder: (_, state) => const HomePage(),
  //         ),
  //         GoRoute(
  //           path: aboutPath,
  //           name: aboutPath,
  //           builder: (_, state) => const AboutPage(),
  //         ),
  //         GoRoute(
  //           path: projectPath,
  //           name: projectPath,
  //           builder: (_, state) => const ProjectPage(),
  //         )
  //       ],
  //     ),
  //   ],
  //   initialLocation: webHomePath,
  // );
}
