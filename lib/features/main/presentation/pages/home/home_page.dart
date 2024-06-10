import 'package:auto_route/auto_route.dart';
import 'package:beyish_jolu/core/routes/router.gr.dart';
import 'package:beyish_jolu/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<GridMenuItem> gridMenu = [];

  @override
  void initState() {
    super.initState();
    gridMenu = [
      GridMenuItem(
          img: "assets/images/hadj.png",
          title: "Ажылык",
          onTap: () {
            context.router.push(const CategoryHadjRoute());
          }),
      GridMenuItem(
        img: "assets/images/umra.png",
        title: "Умра",
        onTap: () {
          context.router.push(const UmraRoute());
        },
      ),
      GridMenuItem(
        img: "assets/images/prep.png",
        title: "Даярдык",
        onTap: () {
          context.router.push(const PreparationRoute());
        },
      ),
      GridMenuItem(
        img: "assets/images/fine.png",
        title: "Айып жазалары",
        onTap: () {
          context.router.push(const FineRoute());
        },
      ),
    ];
  }

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
        ),
        body: Stack(children: [
          Image.asset('assets/images/Vector.png'),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SvgPicture.asset(
                  "assets/svg/home_logo.svg",
                  height: 177,
                ),
                const SizedBox(height: 40),
                Expanded(
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: gridMenu.length,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: gridMenu[index].onTap,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                gridMenu[index].img,
                                height: 65,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                gridMenu[index].title,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.whiteColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}

class GridMenuItem {
  final String title;
  final String img;
  final VoidCallback onTap;

  GridMenuItem({required this.title, required this.img, required this.onTap});
}
