import 'package:auto_route/auto_route.dart';
import 'package:beyish_jolu/core/routes/router.gr.dart';
import 'package:beyish_jolu/features/main/data/models/umra_model.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HadjPage extends StatelessWidget {
  final SectionModel hadj;

  const HadjPage({super.key, required this.hadj});

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
        title: const Text(
          "Ажылык",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: const Color(0XFF4B7F7F),
      ),
      body: Stack(children: [
        Image.asset('assets/images/Vector.png'),
        Padding(
          padding: const EdgeInsets.only(left: 16.00, right: 16.00, top: 25),
          child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                final dua = hadj.duas[index];
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
                    context.router.push(
                      UmraDetailRoute(initialPage: index, section: hadj),
                    );
                  },
                );
              },
              separatorBuilder: (context, int index) {
                return const SizedBox(height: 10);
              },
              itemCount: hadj.duas.length),
        ),
      ]),
    );
  }
}
