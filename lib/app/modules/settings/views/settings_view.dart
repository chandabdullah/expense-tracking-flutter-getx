import 'package:_finance_tracking/app/components/custom_appbar.dart';
import 'package:_finance_tracking/app/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        "Settings",
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(OctIcons.search),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(kPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundColor: Get.theme.splashColor,
                        backgroundImage: const NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/nextlevelsoftpk.appspot.com/o/Files%2Ffile-20240409072352625_OPj0A.jpeg?alt=media',
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(kSpacing / 1.5),
                          decoration: BoxDecoration(
                            color: Get.theme.cardColor,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.camera_alt_outlined,
                            size: 17,
                            color: Get.theme.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Gap(10),
              Text(
                "Chand Abdullah",
                textAlign: TextAlign.center,
                style: Get.textTheme.titleLarge,
              ),
              Text(
                "chandabdullah.nls@gmail.com",
                textAlign: TextAlign.center,
                style: Get.textTheme.bodySmall,
              ),
              const Gap(20),
              Text(
                "Currency and Stats".toUpperCase(),
                style: Get.textTheme.bodySmall,
              ),
              const Gap(10),
              Container(
                decoration: BoxDecoration(
                  color: Get.theme.cardColor,
                  borderRadius: BorderRadius.circular(kBorderRadius),
                ),
                child: Material(
                  type: MaterialType.transparency,
                  child: Column(
                    children: [
                      customListTile(
                        title: "Currency",
                        leadingIcon: Icons.currency_exchange,
                        onTap: () {},
                        trailing: "USD",
                      ),
                      customListTile(
                        title: "Dashboard Settings",
                        leadingIcon: OctIcons.graph,
                        onTap: () {},
                      ),
                      customListTile(
                        title: "Categories",
                        leadingIcon: OctIcons.apps,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(20),
              Text(
                "Account and wallets".toUpperCase(),
                style: Get.textTheme.bodySmall,
              ),
              const Gap(10),
              Container(
                decoration: BoxDecoration(
                  color: Get.theme.cardColor,
                  borderRadius: BorderRadius.circular(kBorderRadius),
                ),
                child: Material(
                  type: MaterialType.transparency,
                  child: Column(
                    children: [
                      customListTile(
                        title: "Profile settings",
                        leadingIcon: OctIcons.person,
                        onTap: () {},
                      ),
                      customListTile(
                        title: "Security",
                        leadingIcon: OctIcons.key,
                        onTap: () {},
                      ),
                      customListTile(
                        title: "Friends and contacts",
                        leadingIcon: OctIcons.people,
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              const Gap(10),
              Container(
                decoration: BoxDecoration(
                  color: Get.theme.cardColor,
                  borderRadius: BorderRadius.circular(kBorderRadius),
                ),
                child: Material(
                  type: MaterialType.transparency,
                  child: Column(
                    children: [
                      customListTile(
                        title: "Logout",
                        leadingIcon: OctIcons.sign_out,
                        onTap: () {},
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customListTile({
    required String title,
    required IconData leadingIcon,
    String? trailing,
    Function()? onTap,
    Color? color,
  }) {
    return ListTile(
      onTap: onTap,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      leading: Icon(
        leadingIcon,
        color: color ?? Get.theme.primaryColor,
      ),
      title: Text(
        title,
        style: Get.textTheme.titleMedium,
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (trailing != null)
            Text(
              trailing,
              style: Get.textTheme.bodySmall,
            ),
          Icon(
            Icons.keyboard_arrow_right,
            color: Get.theme.disabledColor,
          ),
        ],
      ),
    );
  }
}
