import 'package:e_commerc_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/texts/section_heading.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomSectionHeading(
          titleText: 'Shipping Address',
          buttonTitleText: 'Change',
          onPressed: () {},
        ),
        Text('Zeus Tempest', style: Theme.of(context).textTheme.bodyLarge),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: CustomSizes.spaceBetweenItems / 2),
            Text('+63912 345 6789', style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
        const SizedBox(width: CustomSizes.spaceBetweenItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: CustomSizes.spaceBetweenItems / 2),
            Expanded(child: Text('Jura Tempest Federation, Jura Forest', style: Theme.of(context).textTheme.bodyMedium))
          ],
        ),
      ],
    );
  }
}
