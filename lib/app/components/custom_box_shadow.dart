import 'package:flutter/material.dart';
import 'package:get/get.dart';

List<BoxShadow>? customBoxShadow({
  Color? color,
  double? blurRadius,
  double? spreadRadius,
  Offset offset = Offset.zero,
}) {
  return [
    BoxShadow(
      color: color ?? Get.theme.splashColor,
      blurRadius: blurRadius ?? 5,
      spreadRadius: spreadRadius ?? 3,
      offset: offset,
    ),
  ];
}
