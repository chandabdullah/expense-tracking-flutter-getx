import 'dart:math';

import 'package:expense_tracking/app/components/custom_appbar.dart';
import 'package:expense_tracking/app/constants/app_constants.dart';
import 'package:expense_tracking/app/data/values/app_colors.dart';
import 'package:expense_tracking/app/data/values/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:intl/intl.dart';

import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // int price = Random().nextInt(1000);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: customAppBar(
          "History",
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(OctIcons.calendar),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: "All"),
              Tab(text: "Expense"),
              Tab(text: "Income"),
            ],
          ),
        ),
        body: SafeArea(
          child: ListView.separated(
            padding: const EdgeInsets.all(kPadding),
            itemCount: 6,
            separatorBuilder: (BuildContext context, int index) {
              return const Gap(20);
            },
            itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: const EdgeInsets.all(kSpacing),
                decoration: BoxDecoration(
                  color: Get.theme.cardColor,
                  border: Border.all(
                    color: Get.theme.splashColor,
                  ),
                  borderRadius: BorderRadius.circular(kBorderRadius),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            DateFormat.yMMMMEEEEd().format(
                              DateTime.now().add(Duration(days: -index)),
                            ),
                            style: Get.textTheme.bodySmall,
                          ),
                        ),
                        Text(
                          "\$2337.44",
                          style: Get.textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    const Divider(),
                    ListView.separated(
                      itemCount: 5,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (BuildContext context, int index) {
                        return const Gap(0);
                      },
                      itemBuilder: (BuildContext context, int index) {
                        List list = [
                          "Transport",
                          "Cafe",
                          "Health",
                          "Shopping",
                          "Crypto"
                        ];
                        String item = list[index];

                        return ListTile(
                          dense: true,
                          minVerticalPadding: 0,
                          contentPadding: const EdgeInsets.all(0),
                          leading: Container(
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
                          title: Text(
                            item,
                            style: Get.textTheme.bodyMedium,
                          ),
                          trailing: Text(
                            item.toLowerCase() == 'salary'
                                ? "+\$2999"
                                : "-\$200",
                            style: Get.textTheme.titleMedium?.copyWith(
                              color: item.toLowerCase() == 'salary'
                                  ? Colors.green
                                  : null,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
