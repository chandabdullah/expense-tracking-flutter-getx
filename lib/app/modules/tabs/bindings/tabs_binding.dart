import 'package:_finance_tracking/app/modules/budgets/controllers/budgets_controller.dart';
import 'package:_finance_tracking/app/modules/home/controllers/home_controller.dart';
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
  }
}
