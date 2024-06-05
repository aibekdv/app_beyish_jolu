import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UmraDetailPage extends StatelessWidget {
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
          title,
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
            SizedBox(
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
                        height: 50,
                        width: double.infinity,
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: const Color(0XFF4B7F7F),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          subtitle,
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
                            child: Column(
                              children: [
                                Text(
                                  arabicText,
                                  style: const TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                                Text(
                                  transliteration,
                                  style: const TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                                Text(
                                  translation,
                                  style: const TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  onTap: () {},
                  text: 'Назад',
                ),
                const Text('1/9'),
                CustomButton(onTap: () {}, text: 'Вперед'),
              ],
            ),
            const SizedBox(height: 16),
            Slider(
              thumbColor: Colors.white,
              value: 5,
              min: 1,
              max: 9,
              onChanged: (value) {},
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
