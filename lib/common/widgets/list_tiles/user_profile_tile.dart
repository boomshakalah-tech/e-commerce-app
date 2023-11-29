import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';

class CustomUserProfileTile extends StatelessWidget {
  const CustomUserProfileTile({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage(CustomImagesStrings.userProfile1),
        maxRadius: 30,
      ),
      // leading: const CustomCircularImage(
      //   image: CustomImagesStrings.user,
      //   backgroundColor: Colors.white,
      //   height: 50,
      //   width: 50,
      // ),
      //name
      title: Text(
        'Zeus K. Tempest',
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .apply(color: CustomColor.white),
      ),
      subtitle: Text(
        'zeuskaizen@gmail.com',
        style: Theme.of(context)
            .textTheme
            .bodyMedium!
            .apply(color: CustomColor.white),
      ),
      trailing: IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Iconsax.edit,
          color: CustomColor.white,
        ),
      ),
    );
  }
}
