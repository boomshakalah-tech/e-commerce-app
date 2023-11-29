import 'package:e_commerc_app/features/personalization/screens/address/address.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'package:e_commerc_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerc_app/features/personalization/screens/profile/profile.dart';
import 'package:e_commerc_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerc_app/common/widgets/custom_shapes/contianers/primary_header_container.dart';
import 'package:e_commerc_app/utils/constants/sizes.dart';
import '../../../../common/widgets/list_tiles/settings_menu_tile.dart';
import '../../../../common/widgets/list_tiles/user_profile_tile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            CustomPrimaryHeaderContainer(
              child: Column(
                children: [
                  // Settings Appbar
                  CustomAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: Colors.white),
                    ),
                  ),

                  //User Profile card
                  CustomUserProfileTile(
                      onPressed: () => Get.to(() => const ProfileScren())),

                  const SizedBox(height: CustomSizes.spaceBetweenSections),
                ],
              ),
            ),
            // Body
            Padding(
              padding: const EdgeInsets.all(CustomSizes.defaultSpace),
              child: Column(
                children: [
                  //Account Settings
                  const CustomSectionHeading(
                    titleText: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: CustomSizes.spaceBetweenItems),

                  //Address
                  SettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subTitle: 'Set shopping delivery address',
                    ontap: () => Get.to(() => const UserAddressScreen()),
                  ),
                  //Cart
                  SettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Cart',
                    subTitle: 'Add, remove product and move it to checkout',
                    ontap: () {},
                  ),
                  //Orders
                  SettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subTitle: 'In-progress and Completed Orders',
                    ontap: () {},
                  ),
                  //Bank Account
                  SettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subTitle: 'Withdraw balance to registered bank accounts',
                    ontap: () {},
                  ),
                  //Coupons
                  SettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subTitle: 'List of all discont coupons',
                    ontap: () {},
                  ),
                  //Notif
                  SettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subTitle: 'Set only kind of notification message',
                    ontap: () {},
                  ),
                  //Privacy
                  SettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subTitle: 'Manage data usage and connected accounts',
                    ontap: () {},
                  ),

                  //App Settings
                  const SizedBox(height: CustomSizes.spaceBetweenSections),
                  const CustomSectionHeading(
                    titleText: 'App Settings',
                    showActionButton: false,
                  ),
                  const SizedBox(height: CustomSizes.spaceBetweenItems),
                  const SettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subTitle: 'Upload Data to your Cloud Firebase',
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set reccomendation based on location.',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages.',
                    trailing: Switch(value: true, onChanged: (value) {}),
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen.',
                    trailing: Switch(value: false, onChanged: (value) {}),
                  ),

                  //Logout Button
                  const SizedBox(height: CustomSizes.spaceBetweenSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('Logout'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
