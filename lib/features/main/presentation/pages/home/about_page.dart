import 'package:auto_route/auto_route.dart';
import 'package:beyish_jolu/core/theme/app_colors.dart';
import 'package:beyish_jolu/features/main/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'package:beyish_jolu/features/main/data/models/fine_model.dart';

@RoutePage()
class AboutPage extends StatefulWidget {
  final List<AboutModel> aboutModel;
  final String appBarTitle;
  final int initialPage;
  const AboutPage({
    super.key,
    required this.aboutModel,
    required this.appBarTitle,
    required this.initialPage,
  });

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  late PageController pageController = PageController();

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: widget.initialPage);
    _currentPage = widget.initialPage;
  }

  void onPagechanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  void nextPage() {
    if (_currentPage < widget.aboutModel.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void previousPage() {
    if (_currentPage > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XffEDEDF2),
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          widget.appBarTitle,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: const Color(0XFF4B7F7F),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  controller: pageController,
                  onPageChanged: onPagechanged,
                  itemCount: widget.aboutModel.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: double.infinity,
                      height: 470,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            color: const Color(0XFFD2D6DF),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                width: double.infinity,
                                padding: const EdgeInsets.all(12.0),
                                decoration: BoxDecoration(
                                  color: const Color(0XFF4B7F7F),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  widget.aboutModel[index].title,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              const SizedBox(height: 16),
                              Expanded(
                                child: SingleChildScrollView(
                                  child: Container(
                                    padding: const EdgeInsets.all(16.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      widget.aboutModel[index].description,
                                      style: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  onTap: previousPage,
                  text: 'Назад',
                ),
                Text(' ${_currentPage + 1}/${widget.aboutModel.length}'),
                CustomButton(
                  onTap: () {
                    nextPage();
                  },
                  text: 'Вперед',
                 ),
              ],
            ),
            const SizedBox(height: 16),
            Slider(
              thumbColor: Colors.white,
              activeColor: AppColors.mainColor,
              value: (_currentPage + 1).toDouble(),
              min: 1,
              max: widget.aboutModel.length.toDouble(),
              onChanged: (value) {
                setState(() {
                  int page = value.toInt() - 1;
                  pageController.jumpToPage(page);
                  onPagechanged(page);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
