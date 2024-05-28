import 'package:get/get.dart';

import '../modules/analytics/bindings/analytics_binding.dart';
import '../modules/analytics/views/analytics_view.dart';
import '../modules/budgets/bindings/budgets_binding.dart';
import '../modules/budgets/views/budgets_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/tabs/bindings/tabs_binding.dart';
import '../modules/tabs/views/tabs_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.TABS;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.TABS,
      page: () => const TabsView(),
      binding: TabsBinding(),
    ),
    GetPage(
      name: _Paths.BUDGETS,
      page: () => const BudgetsView(),
      binding: BudgetsBinding(),
    ),
    GetPage(
      name: _Paths.ANALYTICS,
      page: () => const AnalyticsView(),
      binding: AnalyticsBinding(),
    ),
  ];
}
