import 'package:_finance_tracking/app/components/custom_appbar.dart';
import 'package:_finance_tracking/app/constants/app_constants.dart';
import 'package:_finance_tracking/app/data/values/app_colors.dart';
import 'package:_finance_tracking/app/data/values/app_icons.dart';
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
                        child: SfCircularChart(
                          annotations: <CircularChartAnnotation>[
                            CircularChartAnnotation(
                              widget: Text(
                                "\$${controller.totalValue.toStringAsFixed(2)}",
                                style: Get.textTheme.titleLarge,
                              ),
                            ),
                          ],
                          margin: const EdgeInsets.all(0),
                          selectionGesture: ActivationMode.singleTap,
                          tooltipBehavior: TooltipBehavior(
                            activationMode: ActivationMode.singleTap,
                            animationDuration: 0,
                            borderColor: Get.theme.primaryColor,
                            color: Get.theme.cardColor,
                            textStyle: TextStyle(
                              color: Get.theme.primaryColor,
                            ),
                            enable: true,
                            duration: 1000,
                          ),
                          series: [
                            DoughnutSeries<ChartData, String>(
                              cornerStyle: CornerStyle.bothCurve,
                              radius: '100%',
                              innerRadius: "75%",
                              explodeAll: true,
                              explode: true,
                              explodeOffset: "2%",
                              dataSource: [
                                for (var item in controller.reportList)
                                  ChartData(
                                    item.text,
                                    item.value,
                                    item.color,
                                  ),
                              ],
                              strokeWidth: 0,
                              name: 'Expense',
                              pointColorMapper: (ChartData data, _) =>
                                  data.color,
                              xValueMapper: (ChartData data, _) => data.text,
                              yValueMapper: (ChartData data, _) => data.value,
                            ),
                          ],
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
