import 'package:e_commerc_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SettingsMenuTile extends StatelessWidget {
  const SettingsMenuTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subTitle,
    this.trailing,
    this.ontap,
  });

  final IconData icon;
  final String title, subTitle;
  final Widget? trailing;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: CustomColor.primary,
      ), //leading Icon
      title: Text(title, style: textTheme.titleMedium),
      subtitle: Text(subTitle, style: textTheme.labelMedium),
      trailing: trailing,
      onTap: ontap,
    );
  }
}
