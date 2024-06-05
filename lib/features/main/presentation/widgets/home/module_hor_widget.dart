import 'package:beyish_jolu/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ModuleHorWidget extends StatelessWidget {
  final Widget? leading;
  final Widget? trailing;
  final String title;
  final String? desc;
  final VoidCallback onTap;

  const ModuleHorWidget({
    super.key,
    this.leading,
    this.trailing,
    required this.title,
    this.desc,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(10),
        leading: leading,
        trailing: trailing,
        title: Text(title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            )),
        onTap: onTap,
      ),
    );
  }
}
