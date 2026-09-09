import 'package:go_router/go_router.dart';
import 'package:relay/pages/index.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      name: "index",
      path: "/",
      builder: (context, state) => const IndexPage(),
    ),
  ],
);
