import 'package:flutter_starter/view_model/user/user_view_model.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../pages/home_page.dart';
import '../view_model/counter/counter_view_model.dart';

final GoRoute homePage = GoRoute(
  path: Routes.homePage,
  builder: (context, state) => ChangeNotifierProvider<UserViewModel>(
      create: (context) => UserViewModel(),
      child: const MyHomePage()),
);

class Routes {
  static String get homePage => "/";
}
