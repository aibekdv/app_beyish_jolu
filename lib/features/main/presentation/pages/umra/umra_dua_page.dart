import 'package:auto_route/auto_route.dart';
import 'package:beyish_jolu/features/main/domain/models/umra_model.dart';
import 'package:beyish_jolu/features/main/presentation/pages/umra/umra_detail_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UmraDuaPage extends StatelessWidget {
  final SectionModel section;
  const UmraDuaPage({super.key, required this.section});

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
          section.title,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: const Color(0XFF4B7F7F),
      ),
      body: Stack(children: [
        Image.asset('assets/images/home/Vector.png'),
        Padding(
          padding: const EdgeInsets.only(left: 16.00, right: 16.00, top: 25),
          child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                final dua = section.duas[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UmraDetailPage(
                                title: section.title,
                                arabicText: section.duas[index].arabicText,
                                subtitle: section.duas[index].subtitle,
                                transliteration:
                                    section.duas[index].transliteration,
                                translation: section.duas[index].translation)));
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Text(
                          dua.subtitle,
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (context, int index) {
                return const SizedBox(
                  height: 10,
                );
              },
              itemCount: section.duas.length),
        ),
      ]),
    );
  }
}
