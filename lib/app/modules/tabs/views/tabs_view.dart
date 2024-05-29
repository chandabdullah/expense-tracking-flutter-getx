import 'package:expense_tracking/app/modules/settings/views/settings_view.dart';

import '/app/modules/analytics/views/analytics_view.dart';
import '/app/modules/budgets/views/budgets_view.dart';
import '/app/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../controllers/tabs_controller.dart';

class TabsView extends GetView<TabsController> {
  const TabsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      tabs: [
        PersistentTabConfig(
          screen: const HomeView(),
          item: ItemConfig(
            inactiveIcon: const Icon(Bootstrap.house_door),
            icon: const Icon(Bootstrap.house_door_fill),
            title: "Home",
          ),
        ),
        PersistentTabConfig(
          screen: const BudgetsView(),
          item: ItemConfig(
            inactiveIcon: const Icon(Bootstrap.bar_chart),
            icon: const Icon(Bootstrap.bar_chart_fill),
            title: "Budgets",
          ),
        ),
        PersistentTabConfig(
          screen: const AnalyticsView(),
          item: ItemConfig(
            inactiveIcon: const Icon(Bootstrap.pie_chart),
            icon: const Icon(Bootstrap.pie_chart_fill),
            title: "Analytics",
          ),
        ),
        PersistentTabConfig(
          screen: const SettingsView(),
          item: ItemConfig(
            inactiveIcon: const Icon(Bootstrap.gear),
            icon: const Icon(Bootstrap.gear_fill),
            title: "Settings",
          ),
        ),
      ],
      backgroundColor: Get.theme.cardColor,
      navBarBuilder: (navBarConfig) => Style1BottomNavBar(
        navBarConfig: navBarConfig,
      ),
    );
  }
}
