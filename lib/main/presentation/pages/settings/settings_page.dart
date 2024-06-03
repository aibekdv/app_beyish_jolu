import 'package:auto_route/auto_route.dart';
import 'package:beyish_jolu/core/theme/app_colors.dart';
import 'package:beyish_jolu/main/presentation/widgets/home/settings_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.mainColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          iconTheme: const IconThemeData(color: AppColors.whiteColor),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SettingsWidget(
                text: "Тема",
                image: SvgPicture.asset("assets/images/home/theme.svg"),
                icon: Icons.arrow_forward_ios_rounded,
              ),
              const Divider(
                height: 0,
                indent: Checkbox.width * 2.2,
                endIndent: Checkbox.width,
              ),
              SettingsWidget(
                text: "Tил",
                image: SvgPicture.asset("assets/images/home/language.svg"),
                icon: Icons.arrow_forward_ios_rounded,
              ),
              const Divider(
                height: 0,
                indent: Checkbox.width * 2.2,
                endIndent: Checkbox.width,
              ),
              SettingsWidget(
                text: "Колдонмону баалаңыз",
                image: SvgPicture.asset("assets/images/home/rating.svg"),
                icon: Icons.arrow_forward_ios_rounded,
              ),
              const Divider(
                height: 0,
                indent: Checkbox.width * 2.2,
                endIndent: Checkbox.width,
              ),
            ],
          ),
        ));
  }
}
