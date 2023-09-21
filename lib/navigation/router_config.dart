import 'package:flutter_starter/navigation/routes.dart';
import 'package:go_router/go_router.dart';

class RouterMap {
  static GoRouter router = GoRouter(routes: [homePage]);
}


class Routes {
  static String get homePage => "/";
}
