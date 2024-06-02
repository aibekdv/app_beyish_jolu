// ignore_for_file: deprecated_member_use

import 'package:auto_route/annotations.dart';
import 'package:beyish_jolu/features/home/presentation/pages/hadj/hadj_page.dart';
import 'package:beyish_jolu/features/home/presentation/pages/home/home_page.dart';
import 'package:beyish_jolu/features/home/presentation/pages/umra/umra_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  PageController pageController = PageController();

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: _currentIndex,
      keepPage: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (value) {
            _currentIndex = value;
            setState(() {});
          },
          children: const [HomePage(), HadjPage(), UmraPage()],
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          backgroundColor: const Color(0XFF4B7F7F),
          currentIndex: _currentIndex,
          onTap: _onTabTapped,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w400,
            height: 1.6,
          ),
          unselectedItemColor: Colors.white,
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 11,
            height: 1.6,
          ),
          selectedItemColor: Colors.grey.shade300,
          items: [
            BottomNavigationBarItem(
              label: "Главный",
              icon: SvgPicture.asset(
                "assets/images/home/fine.svg",
                width: 22,
                height: 22,
                color: _currentIndex == 0 ? Colors.grey.shade300 : Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/home/fine.svg",
                width: 22,
                height: 22,
                color: _currentIndex == 1 ? Colors.grey.shade300 : Colors.white,
              ),
              label: "Мекке",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/home/fine.svg",
                width: 22,
                height: 22,
                color: _currentIndex == 2 ? Colors.grey.shade300 : Colors.white,
              ),
              label: "Умра",
            )
          ],
        ),
      ),
    );
  }

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 10),
      curve: Curves.bounceIn,
    );
  }
}
