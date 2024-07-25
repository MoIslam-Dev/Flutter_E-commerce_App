import 'package:e_commerceapp/common/widgets/appbar/appbar.dart';
import 'package:e_commerceapp/common/widgets/custome_shaps/custome_containers/primary_header_container.dart';
import 'package:e_commerceapp/common/widgets/listtile/settings_menu_tile.dart';
import 'package:e_commerceapp/common/widgets/listtile/user_list_tile.dart';
import 'package:e_commerceapp/common/widgets/texts/section_heading.dart';
import 'package:e_commerceapp/features/personalization/screens/Profile/profile.dart';
import 'package:e_commerceapp/utils/constants/colors.dart';
import 'package:e_commerceapp/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //header part
            EPrimaryHeaderContainer(
                child: Column(children: [
              EAppBar(
                title: Text('Profile',
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .apply(color: EColors.white)),
              ),
              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),
               EUserProfileTile(onPressed:()=> Get.to( const ProfileScreen()),),
              const SizedBox(
                height: ESizes.spaceBtwSections,
              ),
            ])),
            //body part
            Padding(
              padding: const EdgeInsets.all(ESizes.defaultSpace),
              child: Column(
                children: [
                  const SectionHeading(
                    title: 'Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: ESizes.spaceBtwItems,
                  ),
                  const SettingsMenuTile(
                    title: 'My Address',
                    subtitle: 'set shopping delivery address',
                    icon: Iconsax.safe_home,
                  ),
                  SettingsMenuTile(
                    ontap: () {},
                    title: "My Cart",
                    subtitle: "Add, Remove Products And Move To Checkout",
                    icon: Iconsax.shopping_cart,
                  ),
                  const SettingsMenuTile(
                      title: "My Orders",
                      subtitle: "In-Progress And Completed Orders",
                      icon: Iconsax.bag),
                  const SettingsMenuTile(
                    title: "Bank Account",
                    subtitle: "WithDraw Balance To Registered Bank Account",
                    icon: Iconsax.bank,
                  ),
                  const SettingsMenuTile(
                    title: "My Coupons",
                    subtitle: "List Of All Discounted Coupons",
                    icon: Iconsax.discount_shape,
                  ),
                  const SettingsMenuTile(
                    title: "Notifications",
                    subtitle: "Set Any Kind Of Notifications Message",
                    icon: Iconsax.notification,
                  ),
                  const SettingsMenuTile(
                    title: "Account Privacy",
                    subtitle: "Manage Data Usage And Connected Accounts",
                    icon: Iconsax.security_card,
                  ),
                  //app settings
                  const SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),
                  const SectionHeading(
                    title: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(
                    height: ESizes.spaceBtwItems,
                  ),
                  const SettingsMenuTile(
                    title: 'My Address',
                    subtitle: 'set shopping delivery address',
                    icon: Iconsax.safe_home,
                  ),
                  SettingsMenuTile(
                    title: 'My Address',
                    subtitle: 'set shopping delivery address',
                    icon: Iconsax.safe_home,
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                  SettingsMenuTile(
                    title: 'My Address',
                    subtitle: 'set shopping delivery address',
                    icon: Iconsax.safe_home,
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  SettingsMenuTile(
                    title: 'HD image quality',
                    subtitle: 'set image quality to be seen ',
                    icon: Iconsax.safe_home,
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
