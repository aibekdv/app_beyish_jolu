import 'package:auto_route/auto_route.dart';
import 'package:beyish_jolu/bloc/theme_cubit.dart';
import 'package:beyish_jolu/core/theme/app_colors.dart';
import 'package:beyish_jolu/features/main/presentation/widgets/home/settings_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isdark = context.watch<ThemeCubit>().state.isdark;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Ырастоолор",
              style: TextStyle(color: AppColors.whiteColor)),
          centerTitle: true,
          backgroundColor: isdark ? Colors.black26 : AppColors.mainColor,
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
                  widget: IconButton(
                      onPressed: () {
                        _setThemeBrightness(context, !isdark);
                      },
                      icon: isdark
                          ? const Icon(Icons.light_mode)
                          : const Icon(Icons.dark_mode))),
              const Divider(
                height: 0,
                indent: Checkbox.width * 2.2,
                endIndent: Checkbox.width,
              ),
              SettingsWidget(
                text: "Tил",
                image: SvgPicture.asset("assets/images/home/language.svg"),
              ),
              const Divider(
                height: 0,
                indent: Checkbox.width * 2.2,
                endIndent: Checkbox.width,
              ),
              SettingsWidget(
                text: "Тиркемени баалаңыз",
                image: SvgPicture.asset("assets/images/home/rating.svg"),
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

  void _setThemeBrightness(BuildContext context, bool value) {
    context
        .read<ThemeCubit>()
        .toggleTheme(value ? Brightness.dark : Brightness.light);
  }
}
