import 'package:expense_tracking/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

AppBar customAppBar(
  String title, {
  bool centerTitle = false,
  List<Widget>? actions,
  PreferredSizeWidget? bottom,
}) {
  return AppBar(
    elevation: 0,
    title: Text(
      title,
      style: Get.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: centerTitle,
    actions: actions ??
        [
          IconButton(
            onPressed: () {
              Get.toNamed(Routes.HISTORY);
            },
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
    bottom: bottom,
  );
}
