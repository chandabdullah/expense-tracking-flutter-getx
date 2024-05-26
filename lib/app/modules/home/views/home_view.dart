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
        appBar: AppBar(
          title: Text(
            "\$6500",
            style: Get.textTheme.titleLarge!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                OctIcons.history,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                OctIcons.bell,
              ),
            ),
          ],
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
                  padding: const EdgeInsets.all(15),
                  color: Get.theme.cardColor,
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
                        height: 150,
                        width: 150,
                        child: SfCircularChart(
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
                              dataSource: [
                                ChartData('David', 20, Colors.orange),
                                ChartData('Steve', 30, Colors.pink),
                                ChartData('Jack', 40, Colors.green),
                                ChartData('Others', 55, Colors.yellow),
                                ChartData('Others', 35, Colors.teal),
                              ],
                              name: 'Expense',
                              pointColorMapper: (ChartData data, _) =>
                                  data.color,
                              xValueMapper: (ChartData data, _) => data.x,
                              yValueMapper: (ChartData data, _) => data.y,
                            )
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
                ListView.separated(
                  itemCount: 7,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (_, index) => const Gap(10),
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(Icons.car_crash_outlined),
                      title: Text(
                        "Public transport",
                        style: Get.textTheme.titleMedium,
                      ),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "31%",
                            style: Get.textTheme.bodySmall,
                          ),
                          const Gap(20),
                          Text(
                            "-59.91\$",
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

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}
