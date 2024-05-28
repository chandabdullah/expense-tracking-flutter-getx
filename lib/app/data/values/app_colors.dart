import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppColors {
  static Color getCategoryColor(String category) {
    switch (category.trim().toLowerCase()) {
      case 'shopping':
        return Colors.yellow;
      case 'cafe':
        return Colors.orange;
      case 'public transport' || 'transport':
        return Colors.teal;
      case 'petrol':
        return Colors.blue;
      case 'health':
        return Colors.red;
      case 'family':
        return Colors.pink;
      case 'crypto':
        return Colors.lime;
      case 'gifts' || 'gift':
        return Colors.blueGrey;
      case 'education':
        return Colors.deepPurple;
      case 'sport':
        return Colors.purple;
      case 'traveling':
        return Colors.lightGreen;
      case 'pets':
        return Colors.brown;
      case 'baby':
        return Colors.indigo;
      case 'leisure':
        return Colors.lightBlue;
      case 'spotify':
        return Colors.green;
      case 'removal':
        return Colors.grey;
      default:
        return Get.theme.primaryColor;
    }
  }
}
