import 'package:go_router/go_router.dart';
import '../main.dart';
import 'router_config.dart';

final GoRoute homePage = GoRoute(
  path: Routes.homePage,
  builder: (context, state) =>
      const MyHomePage(title: 'Flutter Demo Home Page'),
);
