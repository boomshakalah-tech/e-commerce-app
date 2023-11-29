import 'package:flutter/material.dart';

import 'package:e_commerc_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerc_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerc_app/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:e_commerc_app/utils/constants/image_strings.dart';
import 'package:e_commerc_app/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScren extends StatelessWidget {
  const ProfileScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),

      //Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              //Profile Picture
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage(CustomImagesStrings.userProfile1),
                      maxRadius: 60,
                    ),
                    // const CustomCircularImage(
                    //   image: CustomImagesStrings.user,
                    //   height: 80,
                    //   width: 80,
                    // ),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),

              //Details
              const SizedBox(height: CustomSizes.spaceBetweenItems / 2),
              const Divider(),
              const SizedBox(height: CustomSizes.spaceBetweenItems),

              //Heading Profile info
              const CustomSectionHeading(
                titleText: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(height: CustomSizes.spaceBetweenItems),

              CustomProfileMenu(
                title: 'Name',
                value: 'Zeus K. Tempest',
                onTap: () {},
              ),
              CustomProfileMenu(
                title: 'Username',
                value: 'boomshakalah',
                onTap: () {},
              ),

              const SizedBox(height: CustomSizes.spaceBetweenItems / 2),
              const Divider(),
              const SizedBox(height: CustomSizes.spaceBetweenItems),

              //Heading Personal info
              const CustomSectionHeading(
                titleText: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(height: CustomSizes.spaceBetweenItems),

              CustomProfileMenu(
                title: 'User ID',
                value: '123',
                icondata: Iconsax.copy,
                onTap: () {},
              ),
              CustomProfileMenu(
                title: 'E-mail',
                value: 'zeuskaizen@gmail.com',
                onTap: () {},
              ),
              CustomProfileMenu(
                title: 'Phone Number',
                value: '09123456789',
                onTap: () {},
              ),
              CustomProfileMenu(
                title: 'Gender',
                value: 'Male',
                onTap: () {},
              ),
              CustomProfileMenu(
                title: 'Date of Birth',
                value: 'January 1, 2023',
                onTap: () {},
              ),

              const SizedBox(height: CustomSizes.spaceBetweenItems),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Delete Account',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
