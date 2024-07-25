import 'package:e_commerceapp/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SettingsMenuTile extends StatelessWidget {
 final IconData icon;
  
final  String title;
  
 final String subtitle;
  
  final Widget? trailing;
  final VoidCallback ?ontap;

  const SettingsMenuTile({super.key, required this.icon, required this.title, required this.subtitle, this.trailing, this.ontap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 28,
        color: EColors.primary,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleMedium,
      ),
      subtitle: Text(
        subtitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
      trailing: trailing,
      onTap: ontap,
    );
  }
}
