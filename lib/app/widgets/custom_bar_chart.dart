import 'package:expense_tracking/app/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CustomBarChart extends StatefulWidget {
  const CustomBarChart({super.key});

  @override
  State<CustomBarChart> createState() => _CustomBarChartState();
}

class _CustomBarChartState extends State<CustomBarChart> {
  _CustomBarChartState();

  List<ChartSampleData>? chartData;
  TooltipBehavior? _tooltipBehavior;

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(
      enable: true,
      duration: 1000,
    );
    chartData = <ChartSampleData>[
      ChartSampleData('Jan', 13, 8),
      ChartSampleData('Feb', 8, 10),
      ChartSampleData('Mar', 12, 10),
      ChartSampleData('Apr', 4, 8),
      ChartSampleData('May', 8, 5),
      ChartSampleData('Jun', 11, 7),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildSpacingColumnChart();
  }

  ///Get the cartesian chart widget
  SfCartesianChart _buildSpacingColumnChart() {
    return SfCartesianChart(
      margin: const EdgeInsets.all(0),
      plotAreaBorderWidth: 0,
      primaryXAxis: const CategoryAxis(
        isVisible: true,
        axisBorderType: AxisBorderType.withoutTopAndBottom,
        axisLine: AxisLine(width: 0),
        majorGridLines: MajorGridLines(width: 0),
        majorTickLines: MajorTickLines(width: 0),
      ),
      primaryYAxis: const NumericAxis(
        isVisible: false,
      ),
      series: _getDefaultColumn(),
      tooltipBehavior: _tooltipBehavior,
    );
  }

  ///Get the column series
  List<ColumnSeries<ChartSampleData, String>> _getDefaultColumn() {
    return <ColumnSeries<ChartSampleData, String>>[
      ColumnSeries<ChartSampleData, String>(
        width: .8,
        spacing: .1,
        dataSource: chartData,
        trackColor: Get.theme.splashColor,
        isTrackVisible: true,
        color: Colors.green,
        trackBorderWidth: 1,
        trackBorderColor: Get.theme.cardColor,
        xValueMapper: (ChartSampleData sales, _) => sales.x as String,
        yValueMapper: (ChartSampleData sales, _) => sales.y,
        name: 'Income',
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      ColumnSeries<ChartSampleData, String>(
        trackColor: Get.theme.splashColor,
        isTrackVisible: true,
        dataSource: chartData,
        trackBorderWidth: 1,
        trackBorderColor: Get.theme.cardColor,
        width: .8,
        spacing: .1,
        color: Colors.red,
        xValueMapper: (ChartSampleData sales, _) => sales.x as String,
        yValueMapper: (ChartSampleData sales, _) => sales.secondSeriesYValue,
        name: 'Expense',
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
    ];
  }

  @override
  void dispose() {
    chartData!.clear();
    super.dispose();
  }
}

class ChartSampleData {
  ChartSampleData(
    this.x,
    this.y,
    this.secondSeriesYValue, [
    this.color,
  ]);
  final String x;
  final double y;
  final double secondSeriesYValue;
  final Color? color;
}
