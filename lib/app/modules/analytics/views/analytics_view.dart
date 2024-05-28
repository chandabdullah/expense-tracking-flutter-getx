import 'package:_finance_tracking/app/components/custom_appbar.dart';
import 'package:_finance_tracking/app/components/custom_box_shadow.dart';
import 'package:_finance_tracking/app/constants/app_constants.dart';
import 'package:_finance_tracking/app/data/values/app_colors.dart';
import 'package:_finance_tracking/app/data/values/app_icons.dart';
import 'package:_finance_tracking/app/widgets/custom_bar_chart.dart';
import 'package:_finance_tracking/app/widgets/custom_donut_chart.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

import '../controllers/analytics_controller.dart';

class AnalyticsView extends GetView<AnalyticsController> {
  const AnalyticsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AnalyticsController>(builder: (_) {
      return Scaffold(
        appBar: customAppBar(
          "\$6500",
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Bootstrap.funnel,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Bootstrap.calendar4,
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: kPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kPadding,
                    vertical: kSpacing,
                  ),
                  decoration: BoxDecoration(
                    color: Get.theme.cardColor,
                    boxShadow: customBoxShadow(
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Income",
                                  style: Get.textTheme.bodySmall,
                                ),
                                Text(
                                  "\$1900.0",
                                  style: Get.textTheme.bodyLarge,
                                ),
                                Text(
                                  "\$-0.0",
                                  style: Get.textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Expense",
                                  style: Get.textTheme.bodySmall,
                                ),
                                Text(
                                  "\$966.60",
                                  style: Get.textTheme.bodyLarge,
                                ),
                                Text(
                                  "\$-639.65",
                                  style: Get.textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Total",
                                  style: Get.textTheme.bodySmall,
                                ),
                                Text(
                                  "\$933.40",
                                  style: Get.textTheme.bodyLarge,
                                ),
                                Text(
                                  "\$-215.98",
                                  style: Get.textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Gap(20),
                      const SizedBox(
                        height: 150,
                        child: CustomBarChart(),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(kPadding),
                  child: Text(
                    "Expense",
                    style: Get.textTheme.titleLarge,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kPadding,
                    vertical: kSpacing,
                  ),
                  decoration: BoxDecoration(
                    color: Get.theme.cardColor,
                    boxShadow: customBoxShadow(
                      blurRadius: 1,
                      spreadRadius: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 150,
                        child: CustomDonutChart(
                          data: controller.reportList,
                          centerWidget: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "\$${controller.totalValue.toStringAsFixed(2)}",
                                style: Get.textTheme.titleLarge,
                              ),
                              Text(
                                "May".toUpperCase(),
                                style: Get.textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Gap(20),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Last Month",
                                  style: Get.textTheme.bodySmall,
                                ),
                                Text(
                                  "\$1806.05",
                                  style: Get.textTheme.bodyLarge,
                                ),
                                Text(
                                  "\$+15%",
                                  style: Get.textTheme.bodyMedium!.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Budget",
                                  style: Get.textTheme.bodySmall,
                                ),
                                Text(
                                  "\$0",
                                  style: Get.textTheme.bodyLarge,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "~ a day",
                                  style: Get.textTheme.bodySmall,
                                ),
                                Text(
                                  "\$50.72",
                                  style: Get.textTheme.bodyLarge,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Gap(20),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: controller.reportList.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount:
                              Get.context?.isLandscape ?? false ? 6 : 5,
                          childAspectRatio: Get.context?.isLandscape ?? false
                              ? (1 / 1)
                              : (1 / 1.3),
                        ),
                        itemBuilder: (context, index) {
                          var item = controller.reportList[index];
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                item.text,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Get.textTheme.bodySmall,
                              ),
                              const Gap(4),
                              Container(
                                padding: const EdgeInsets.all(7),
                                decoration: BoxDecoration(
                                  color: AppColors.getCategoryColor(item.text)
                                      .withOpacity(.2),
                                  borderRadius:
                                      BorderRadius.circular(kBorderRadius),
                                ),
                                child: Icon(
                                  AppIcons.getCategoryIcon(item.text),
                                  color: AppColors.getCategoryColor(item.text),
                                ),
                              ),
                              const Gap(4),
                              Text(
                                "\$${item.value.abs()}",
                                maxLines: 1,
                                style: Get.textTheme.bodyMedium,
                              ),
                            ],
                          );
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
