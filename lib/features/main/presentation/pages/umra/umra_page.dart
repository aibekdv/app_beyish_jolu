import 'package:auto_route/auto_route.dart';
import 'package:beyish_jolu/core/theme/app_colors.dart';
import 'package:beyish_jolu/features/main/domain/models/umra_model.dart';
import 'package:beyish_jolu/features/main/presentation/pages/umra/umra_dua_page.dart';
import 'package:beyish_jolu/features/main/presentation/widgets/home/module_hor_widget.dart';
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
            Image.asset('assets/images/home/Vector.png'),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 140),
              child: ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => ModuleHorWidget(
                  leading: Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/images/home/logo.svg",
                        width: 30,
                      ),
                      Text(
                        "${index + 1}",
                        style: const TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 10,
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                UmraDuaPage(section: sections[index])));
                  },
                ),
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
                itemCount: sections.length,
              ),
            ),
          ],
        ));
  }
}
