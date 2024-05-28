import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CustomDonutChart extends StatelessWidget {
  const CustomDonutChart({
    super.key,
    this.centerWidget,
    required this.data,
  });

  final Widget? centerWidget;
  final List<ChartData> data;

  @override
  Widget build(BuildContext context) {
    return SfCircularChart(
      annotations: centerWidget == null
          ? []
          : <CircularChartAnnotation>[
              CircularChartAnnotation(
                horizontalAlignment: ChartAlignment.center,
                verticalAlignment: ChartAlignment.center,
                widget: centerWidget ?? const SizedBox(),
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
            for (var item in data ?? [])
              ChartData(
                item.text,
                item.value,
                item.color,
              ),
          ],
          strokeWidth: 0,
          name: 'Expense',
          pointColorMapper: (ChartData data, _) => data.color,
          xValueMapper: (ChartData data, _) => data.text,
          yValueMapper: (ChartData data, _) => data.value,
        ),
      ],
    );
  }
}

class ChartData {
  ChartData(
    this.text,
    this.value, [
    this.color,
  ]);
  final String text;
  final double value;
  final Color? color;
}
