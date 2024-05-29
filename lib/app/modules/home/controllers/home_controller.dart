import 'package:expense_tracking/app/widgets/custom_donut_chart.dart';

import '/app/data/values/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  List<ChartData> reportList = [
    ChartData(
      "Shopping",
      -97.6,
      AppColors.getCategoryColor('Shopping'),
    ),
    ChartData(
      "Cafe",
      -44.3,
      AppColors.getCategoryColor('Cafe'),
    ),
    ChartData(
      "Public transport",
      -65.5,
      AppColors.getCategoryColor('Public'),
    ),
    ChartData(
      "Petrol",
      -37.2,
      AppColors.getCategoryColor('Petrol'),
    ),
    ChartData(
      "Health",
      -73.5,
      AppColors.getCategoryColor('Health'),
    ),
  ];

  double get totalValue => reportList
      .map((data) => data.value)
      .where((amount) => amount < 0)
      .fold(0, (prev, curr) => prev + curr.abs());

  String calculatePercentage(double percentage) {
    return ((percentage / totalValue) * 100).toStringAsFixed(1);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
