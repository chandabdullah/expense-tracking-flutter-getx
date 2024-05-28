import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/analytics_controller.dart';

class AnalyticsView extends GetView<AnalyticsController> {
  const AnalyticsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnalyticsView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AnalyticsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
