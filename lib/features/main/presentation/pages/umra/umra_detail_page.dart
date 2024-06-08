import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UmraDetailPage extends StatefulWidget {
  final String title;
  final String subtitle;
  final String arabicText;
  final String transliteration;
  final String translation;

  const UmraDetailPage(
      {super.key,
      required this.title,
      required this.arabicText,
      required this.subtitle,
      required this.transliteration,
      required this.translation});

  @override
  State<UmraDetailPage> createState() => _UmraDetailPageState();
}

class _UmraDetailPageState extends State<UmraDetailPage> {
  PageController pageController = PageController();

  int _currentPage = 0;
  void onPagechanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  void nextPage() {
    if (_currentPage < widget.title.length - 1) {
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
          widget.title,
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
                  itemCount: widget.title.length,
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
                                height: 70,
                                width: double.infinity,
                                padding: const EdgeInsets.all(12.0),
                                decoration: BoxDecoration(
                                  color: const Color(0XFF4B7F7F),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  widget.subtitle,
                                  textAlign: TextAlign.center,
                                  maxLines: 2,
                                  style: const TextStyle(
                                      //
                                      color: Colors.white,
                                      fontSize: 17,
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
                                    child: Column(
                                      children: [
                                        Text(
                                          widget.arabicText,
                                          style: const TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                        const SizedBox(height: 15),
                                        RichText(
                                          text: TextSpan(
                                            text: 'Окулушу:  ',
                                            style: const TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: widget.transliteration,
                                                  style: const TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w400))
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 15),
                                        RichText(
                                          text: TextSpan(
                                            text: 'Которулушу: ',
                                            style: const TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: widget.translation,
                                                  style: const TextStyle(
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.w400))
                                            ],
                                          ),
                                        )
                                      ],
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
                Text('${_currentPage + 1}/${widget.title.length}'),
                CustomButton(onTap: nextPage, text: 'Вперед'),
              ],
            ),
            const SizedBox(height: 16),
            Slider(
              thumbColor: Colors.white,
              value: (_currentPage + 1).toDouble(),
              min: 1,
              max: widget.title.length.toDouble(),
              onChanged: (value) {
                int page = value.toInt();
                pageController.jumpToPage(page);
                onPagechanged(page);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    required this.onTap,
  });
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          side: const BorderSide(
            color: Color(0XFF4B7F7F),
          ),
          foregroundColor: Colors.black,
          backgroundColor: Colors.white),
      onPressed: onTap,
      child: Text(text),
    );
  }
}
