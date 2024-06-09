import 'package:auto_route/auto_route.dart';
import 'package:beyish_jolu/core/routes/router.gr.dart';
import 'package:beyish_jolu/features/main/models/umra_model.dart';
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
          padding: const EdgeInsets.all(16.0),
          child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                final dua = section.duas[index];
                return ListTile(
                  minTileHeight: 50,
                  tileColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  title: Text(
                    dua.subtitle,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  onTap: () {
                    context.router.push(UmraDetailRoute(section: section));
                  },
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
