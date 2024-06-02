import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        img: "assets/images/home/prep.svg",
        title: "Хадж",
        onTap: () {},
      ),
      GridMenuItem(
        img: "assets/images/home/fine.svg",
        title: "Умра",
        onTap: () {},
      ),
      GridMenuItem(
        img: "assets/images/home/prep.svg",
        title: "Даярдык",
        onTap: () {},
      ),
      GridMenuItem(
        img: "assets/images/home/fine.svg",
        title: "Штраф",
        onTap: () {},
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0XFF4B7F7F),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 200,
                width: 300,
                child:
                    DecoratedBox(decoration: BoxDecoration(color: Colors.grey)),
              ),
              const Text(
                "БЕЙИШ ЖОЛУ",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color(0XFF4B7F7F),
                ),
              ),
              const SizedBox(height: 40),
              Expanded(
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 18,
                    mainAxisSpacing: 18,
                  ),
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: gridMenu.length,
                  itemBuilder: (BuildContext context, int index) {
                    return DecoratedBox(
                      decoration: BoxDecoration(
                        color: const Color(0XFF4B7F7F),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: GestureDetector(
                        onTap: gridMenu[index].onTap,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              gridMenu[index].img,
                              height: 45,
                            ),
                            const SizedBox(height: 10),
                            Text(
                              gridMenu[index].title,
                              style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}

class GridMenuItem {
  final String title;
  final String img;
  final VoidCallback onTap;

  GridMenuItem({required this.title, required this.img, required this.onTap});
}
