import 'package:auto_route/auto_route.dart';
import 'package:beyish_jolu/core/routes/router.gr.dart';
import 'package:beyish_jolu/core/theme/app_colors.dart';
import 'package:beyish_jolu/features/main/data/models/hadj_model.dart';
import 'package:beyish_jolu/features/main/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class CategoryHadjPage extends StatefulWidget {
  const CategoryHadjPage({super.key});

  @override
  State<CategoryHadjPage> createState() => _CategoryHadjPageState();
}

class _CategoryHadjPageState extends State<CategoryHadjPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.bgcColor,
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          iconTheme: const IconThemeData(color: AppColors.whiteColor),
          title: const Text(
            "Ажылык",
            style: TextStyle(
                color: AppColors.whiteColor, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
          backgroundColor: AppColors.mainColor,
        ),
        body: Stack(
          children: [
            Image.asset('assets/images/Vector.png'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => ModuleHorWidget(
                    leading: Stack(
                      alignment: Alignment.center,
                      children: [
                        SvgPicture.asset('assets/svg/number.svg', width: 35),
                        Text(
                          "${index + 1}",
                          style: const TextStyle(
                            color: AppColors.whiteColor,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    title: hadj[index].title,
                    trailing: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                      color: AppColors.mainColor,
                    ),
                    onTap: () {
                      context.router.push(HadjRoute(
                        hadj: hadj[index],
                      ));
                    },
                  ),
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 20),
                  itemCount: hadj.length,
                ),
              ),
            ),
          ],
        ));
  }
}
