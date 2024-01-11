import 'package:e_commerc_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerc_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerc_app/utils/constants/colors.dart';
import 'package:e_commerc_app/utils/constants/image_strings.dart';
import 'package:e_commerc_app/utils/constants/sizes.dart';
import 'package:e_commerc_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: 4,
            separatorBuilder: (_, __) =>
                const SizedBox(height: CustomSizes.spaceBetweenSections),
            itemBuilder: (_, index) => Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        //image
                        CustomRoundedImage(
                          imageUrl: CustomImagesStrings.productImage1,
                          width: 60,
                          height: 60,
                          padding: const EdgeInsets.all(CustomSizes.sm),
                          backgroundColor:
                              CustomHelperFuntions.isDarkMode(context)
                                  ? CustomColor.darkerGrey
                                  : CustomColor.light,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
