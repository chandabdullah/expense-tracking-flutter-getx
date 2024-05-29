import 'package:expense_tracking/app/widgets/custom_donut_chart.dart';

import '/app/components/custom_appbar.dart';
import '/app/constants/app_constants.dart';
import '/app/data/values/app_colors.dart';
import '/app/data/values/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: customAppBar(
          "\$6500",
          bottom: const TabBar(
            tabs: [
              Tab(text: "Expense"),
              Tab(text: "Income"),
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(kPadding),
                  color: Get.theme.scaffoldBackgroundColor,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Report",
                              style: Get.textTheme.bodyLarge,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Row(
                              children: [
                                Text("This month"),
                                Icon(
                                  OctIcons.chevron_down,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Gap(10),
                      SizedBox(
                        height: 170,
                        width: 170,
                        child: CustomDonutChart(
                          data: controller.reportList,
                          centerWidget: Text(
                            "\$${controller.totalValue.toStringAsFixed(2)}",
                            style: Get.textTheme.titleLarge,
                          ),
                        ),
                      ),
                      const Gap(20),
                      IconButton.filledTonal(
                        iconSize: 30,
                        onPressed: () {},
                        icon: Icon(
                          OctIcons.plus,
                          color: Get.theme.cardColor,
                        ),
                      ),
                      const Gap(10),
                    ],
                  ),
                ),
                const Gap(10),
                ListView.separated(
                  itemCount: controller.reportList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (_, index) => Gap(
                    10,
                    color: Get.theme.cardColor,
                  ),
                  itemBuilder: (context, index) {
                    ChartData item = controller.reportList[index];
                    return ListTile(
                      tileColor: Get.theme.cardColor,
                      leading: Container(
                        padding: const EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          color: AppColors.getCategoryColor(item.text)
                              .withOpacity(.2),
                          borderRadius: BorderRadius.circular(kBorderRadius),
                        ),
                        child: Icon(
                          AppIcons.getCategoryIcon(item.text),
                          color: AppColors.getCategoryColor(item.text),
                        ),
                      ),
                      title: Text(
                        item.text,
                        style: Get.textTheme.titleMedium,
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "${controller.calculatePercentage(item.value.abs())}%",
                            style: Get.textTheme.bodySmall,
                          ),
                          const Gap(20),
                          Text(
                            "${item.value}\$",
                            style: Get.textTheme.bodyLarge,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
