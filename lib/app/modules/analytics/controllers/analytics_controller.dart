import 'package:expense_tracking/app/data/values/app_colors.dart';
import 'package:expense_tracking/app/widgets/custom_donut_chart.dart';
import 'package:get/get.dart';

class AnalyticsController extends GetxController {
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
      "Transport",
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
    ChartData(
      "Family",
      -173.6,
      AppColors.getCategoryColor('Health'),
    ),
    ChartData(
      "Gifts",
      -23.5,
      AppColors.getCategoryColor('Gifts'),
    ),
    ChartData(
      "Crypto",
      -123.7,
      AppColors.getCategoryColor('Crypto'),
    ),
    ChartData(
      "Education",
      -83.3,
      AppColors.getCategoryColor('Education'),
    ),
    ChartData(
      "Sport",
      -53.9,
      AppColors.getCategoryColor('Sport'),
    ),
    ChartData(
      "Traveling",
      -33.4,
      AppColors.getCategoryColor('Traveling'),
    ),
    ChartData(
      "Spotify",
      -13.4,
      AppColors.getCategoryColor('Spotify'),
    ),
    ChartData(
      "Removal",
      -23.4,
      AppColors.getCategoryColor('Removal'),
    ),
  ];

  double get totalValue => reportList
      .map((data) => data.value)
      .where((amount) => amount < 0)
      .fold(0, (prev, curr) => prev + curr.abs());

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
