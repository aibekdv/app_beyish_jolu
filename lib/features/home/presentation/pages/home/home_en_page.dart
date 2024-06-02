import 'dart:ui';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomeEnglishPage extends StatefulWidget {
  const HomeEnglishPage({super.key});

  @override
  State<HomeEnglishPage> createState() => _HomeEnglishPageState();
}

class _HomeEnglishPageState extends State<HomeEnglishPage> {
  List<GridMenuItem> gridMenu = [];

  @override
  void initState() {
    super.initState();
    gridMenu = [
      GridMenuItem(
        img: "assets/images/home/kaaba.png",
        title: "Hajj",
        onTap: () {},
      ),
      GridMenuItem(
        img: "assets/images/home/umra.png",
        title: "Umra",
        onTap: () {},
      ),
      GridMenuItem(
        img: "assets/images/home/prep.png",
        title: "Preparation",
        onTap: () {},
      ),
      GridMenuItem(
        img: "assets/images/home/fine.png",
        title: "Fine",
        onTap: () {},
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(1.0),
            child: Container(
              color: const Color(0xffE5E5E5),
              height: 2.0,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings_outlined,
                color: Colors.grey,
                size: 30,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // SizedBox(
            //   height: 200,
            //   width: double.infinity,
            //   child: DecoratedBox(
            //     decoration: BoxDecoration(
            //       color: Colors.grey,
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     child:
            //   ),
            // ),
            Stack(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: Image.network(
                  "https://s3-alpha-sig.figma.com/img/5e1e/d2c5/c74be32df35b2929bd7b3106f65aa2b6?Expires=1717977600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=hVhSegMelgtfkGX4f36oc5V2g2ARlhuKkxccp8LoXyXnqrxcM8fTksDoSBmyGqpo4DV-4flxcAVq5VgQX1O9v9PS-HCH1fTyzVJWI~q8TERnku856RMqjVVTDt85icGLsMWVDBxdNbHXhNPr2R3Rk3Ckr5vKpteTlxaMCRQJD6C9YAf3m7uauCuJ-vjB7nDdV7gKAEvI7L5GZyoInkYfrHqdpuMq75Qd~ax~htByHnYrMlfBe3-naJ~kRJ9JDT7SNUo2t0oTdlI05yzFsvEpsCH30BEZuy94-1qmDNxjT6ca6vH0Z6raP4dU6MqWZ1Tz25lZoN6f~uUrLncWdD3--w__",
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 204,
                ),
              ),
              Positioned(
                  top: 20,
                  left: 20,
                  bottom: 20,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 9, sigmaY: 9),
                      child: SizedBox(
                          height: 162,
                          width: 142,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.only(left: 23),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Meкка",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '"Эң жакшы ажылыктын сообу бейиш гана болот"',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white,
                                        height: 0),
                                  )
                                ],
                              ),
                            ),
                          )),
                    ),
                  ))
            ]),
            const SizedBox(height: 50),
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
                      color: const Color(0XFF5D8082),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 34),
                      child: GestureDetector(
                        onTap: gridMenu[index].onTap,
                        child: Column(
                          children: [
                            Image.asset(
                              gridMenu[index].img,
                              height: 100,
                            ),
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
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class GridMenuItem {
  final String title;
  final String img;
  final VoidCallback onTap;

  GridMenuItem({required this.title, required this.img, required this.onTap});
}
