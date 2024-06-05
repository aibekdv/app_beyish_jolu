import 'package:auto_route/auto_route.dart';
import 'package:beyish_jolu/core/routes/router.gr.dart';
import 'package:beyish_jolu/features/main/domain/models/preparation_model.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PreparationPage extends StatelessWidget {
  const PreparationPage({super.key});

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
          "Хадж",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
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
                return GestureDetector(
                  onTap: () {
                    context.router.push(AboutPreparationRoute(
                        title: preparationModel[index].title,
                        description: preparationModel[index].description));
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
                          preparationModel[index].title,
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
              itemCount: preparationModel.length),
        ),
      ]),
    );
  }
}
