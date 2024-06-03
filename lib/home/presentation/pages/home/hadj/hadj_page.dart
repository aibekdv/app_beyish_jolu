import 'package:auto_route/auto_route.dart';
import 'package:beyish_jolu/config/routes/router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HadjPage extends StatelessWidget {
  const HadjPage({super.key});

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
                    context.router.push(const AboutHadjRoute());
                  },
                  child: SizedBox(
                    width: double.infinity,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'Аба учагына отурганда же башка унааларга отурганда окулуучу дуа',
                          style: TextStyle(
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
              itemCount: 19),
        ),
      ]),
    );
  }
}
