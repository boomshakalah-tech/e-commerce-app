import 'package:e_commerc_app/features/shop/controllers/home_controller.dart';
import 'package:e_commerc_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custom_shapes/contianers/circular_container.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/sizes.dart';

class CustomPromoSlider extends StatelessWidget {
  const CustomPromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners.map((url) => CustomRoundedImage(imageUrl: url, width: 300, fit: BoxFit.cover)).toList(),
          // items: [
          //   RoundedImage(imageUrl: CImagesStrings.firstBanner, width: 300, fit: BoxFit.cover),
          //   RoundedImage(imageUrl: CImagesStrings.seccondBanner, width: 300, fit: BoxFit.cover),
          //   RoundedImage(imageUrl: CImagesStrings.thirdBanner, width: 300, fit: BoxFit.cover),
          // ],
        ),
        const SizedBox(height: CustomSizes.spaceBetweenItems),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                CustomRoundedContainer(
                  width: 20,
                  height: 4,
                  margin: const EdgeInsets.only(left: CustomSizes.spaceBetweenItems),
                  backgroundColor: controller.carouselCurrenIndex.value == i ? CustomColor.primary : Colors.grey,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
