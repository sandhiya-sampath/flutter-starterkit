import 'package:go_router/go_router.dart';
import '../main.dart';

final GoRoute homePage = GoRoute(
  path: Routes.homePage,
  builder: (context, state) =>
      const MyHomePage(title: 'Flutter Demo Home Page'),
);
class Routes {
  static String get homePage => "/";
}
