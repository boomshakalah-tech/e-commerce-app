import 'package:e_commerc_app/utils/constants/colors.dart';
import 'package:e_commerc_app/utils/device/device_utitlity.dart';
import 'package:e_commerc_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final isDark = CustomHelperFuntions.isDarkMode(context);

    return Material(
      color: isDark ? CustomColor.black : CustomColor.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: CustomColor.primary,
        labelColor: isDark ? CustomColor.white : CustomColor.primary,
        unselectedLabelColor: CustomColor.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(CustomDeviceUtility.getAppBarHeight());
}
