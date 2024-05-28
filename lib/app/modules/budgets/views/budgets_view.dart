import 'package:_finance_tracking/app/components/custom_box_shadow.dart';

import '/app/components/custom_appbar.dart';
import '/app/constants/app_constants.dart';
import '/app/data/values/app_colors.dart';
import '/app/data/values/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';

import '../controllers/budgets_controller.dart';

class BudgetsView extends GetView<BudgetsController> {
  const BudgetsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        "\$6500",
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(kPadding),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(kPadding),
                decoration: BoxDecoration(
                  color: Get.theme.cardColor,
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  boxShadow: customBoxShadow(),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "\$2500",
                                style: Get.textTheme.headlineLarge,
                              ),
                              Text(
                                "May 02 - June 01",
                                style: Get.textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text("Edit"),
                        ),
                      ],
                    ),
                    const Gap(20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "35% Spent",
                          style: Get.textTheme.bodyMedium,
                        ),
                        Text(
                          "\$700",
                          style: Get.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                    const Gap(5),
                    LinearProgressIndicator(
                      value: .35,
                      backgroundColor: Get.theme.colorScheme.tertiary,
                      color: Get.theme.primaryColor,
                    ),
                    const Gap(5),
                    Text(
                      "1800 TO ALLOCATE",
                      style: Get.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              const Gap(20),
              Container(
                padding: const EdgeInsets.all(kPadding),
                decoration: BoxDecoration(
                  color: Get.theme.cardColor,
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  boxShadow: customBoxShadow(),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Expense",
                            style: Get.textTheme.bodySmall,
                          ),
                          const Gap(3),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.arrow_upward,
                                color: Colors.red,
                                size: 20,
                              ),
                              const Gap(4),
                              Text(
                                "\$1929",
                                style: Get.textTheme.bodyLarge,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Income",
                            style: Get.textTheme.bodySmall,
                          ),
                          const Gap(3),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.arrow_downward,
                                color: Colors.green,
                                size: 20,
                              ),
                              const Gap(4),
                              Text(
                                "\$2500",
                                style: Get.textTheme.bodyLarge,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(20),
              Container(
                padding: const EdgeInsets.all(kPadding),
                decoration: BoxDecoration(
                  color: Get.theme.cardColor,
                  borderRadius: BorderRadius.circular(kBorderRadius),
                  boxShadow: customBoxShadow(),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Limits",
                      style: Get.textTheme.titleLarge,
                    ),
                    const Gap(20),
                    for (var item in [
                      "health",
                      "Petrol",
                      "Sport",
                      "Leisure",
                      "Shopping"
                    ])
                      SizedBox(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: AppColors.getCategoryColor(item)
                                        .withOpacity(.2),
                                    borderRadius:
                                        BorderRadius.circular(kBorderRadius),
                                  ),
                                  child: Icon(
                                    AppIcons.getCategoryIcon(item),
                                    color: AppColors.getCategoryColor(item),
                                  ),
                                ),
                                const Gap(10),
                                Text(
                                  item,
                                  style: Get.textTheme.bodyLarge,
                                ),
                                const Spacer(),
                                Text(
                                  "\$26",
                                  style: Get.textTheme.bodyMedium,
                                ),
                                const Gap(10),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Get.theme.hintColor,
                                  size: 20,
                                ),
                              ],
                            ),
                            const Gap(5),
                            LinearProgressIndicator(
                              value: .5,
                              backgroundColor:
                                  Get.theme.primaryColor.withOpacity(.3),
                              color: Get.theme.primaryColor,
                            ),
                            const Gap(5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "50%",
                                  style: Get.textTheme.bodyMedium,
                                ),
                                Text(
                                  "12 of 24\$",
                                  style: Get.textTheme.bodyMedium,
                                ),
                              ],
                            ),
                            const Gap(15),
                          ],
                        ),
                      ),
                    ListTile(
                      onTap: () {},
                      contentPadding: const EdgeInsets.all(0),
                      leading: Icon(
                        Icons.add,
                        color: Get.theme.primaryColor,
                      ),
                      title: Text(
                        "Add a limit",
                        style: Get.textTheme.bodyLarge!.copyWith(
                          color: Get.theme.primaryColor,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right_rounded,
                        color: Get.theme.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
