import 'package:e_commerceapp/utils/constants/colors.dart';
import 'package:e_commerceapp/utils/device/device_utility.dart';
import 'package:e_commerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ETapBar extends StatelessWidget implements PreferredSizeWidget {
  const ETapBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Material(
      color: dark?EColors.black:EColors.white,
      child: TabBar(
        tabAlignment: TabAlignment.start,
        tabs: tabs,
        isScrollable: true,
        indicatorColor: EColors.primary,
        unselectedLabelColor: EColors.darkGrey,
        labelColor: dark
            ? EColors.white
            : EColors.black,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(EDeviceUtils.getAppBarHeight());
}
