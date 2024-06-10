import 'package:auto_route/auto_route.dart';
import 'package:beyish_jolu/core/routes/router.gr.dart';
import 'package:beyish_jolu/core/theme/app_colors.dart';
import 'package:beyish_jolu/features/main/data/models/umra_model.dart';
import 'package:beyish_jolu/features/main/presentation/widgets/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class UmraPage extends StatefulWidget {
  const UmraPage({super.key});

  @override
  State<UmraPage> createState() => _UmraPageState();
}

class _UmraPageState extends State<UmraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgcColor,
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        iconTheme: const IconThemeData(color: AppColors.whiteColor),
        title: const Text(
          "Умра",
          style: TextStyle(
              color: AppColors.whiteColor, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Image.asset('assets/images/Vector.png'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
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
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  title: sections[index].title,
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                    color: Colors.grey,
                  ),
                  onTap: () {
                    context.router.push(UmraDuaRoute(section: sections[index]));
                  },
                ),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 15),
                itemCount: sections.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
