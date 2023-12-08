import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../pages/home_page.dart';
import '../view_model/counter/counter_view_model.dart';

final GoRoute homePage = GoRoute(
  path: Routes.homePage,
  builder: (context, state) => ChangeNotifierProvider<CounterViewModel>(
      create: (context) => CounterViewModel(),
      child: const MyHomePage(title: 'Flutter Demo Home Page')),
);

class Routes {
  static String get homePage => "/";
}
