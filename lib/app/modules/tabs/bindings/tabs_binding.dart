import 'package:_finance_tracking/app/modules/settings/controllers/settings_controller.dart';

import '/app/modules/analytics/controllers/analytics_controller.dart';
import '/app/modules/budgets/controllers/budgets_controller.dart';
import '/app/modules/home/controllers/home_controller.dart';
import 'package:get/get.dart';

import '../controllers/tabs_controller.dart';

class TabsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TabsController>(
      () => TabsController(),
    );
    Get.put(HomeController());
    Get.put(BudgetsController());
    Get.put(AnalyticsController());
    Get.put(SettingsController());
  }
}
