import 'package:auto_route/auto_route.dart';
import 'package:beyish_jolu/bloc/theme_cubit.dart';
import 'package:beyish_jolu/core/routes/router.gr.dart';
import 'package:beyish_jolu/main/domain/models/about_fine_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class FinePage extends StatelessWidget {
  const FinePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isdark = context.watch<ThemeCubit>().state.isdark;

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
          "Айып жазалары",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: isdark ? Colors.black : const Color(0XFF4B7F7F),
      ),
      body: Stack(
        children: [
          Image.asset('assets/images/home/Vector.png'),
          Padding(
              padding:
                  const EdgeInsets.only(left: 16.00, right: 16.00, top: 25),
              child: ListView.separated(
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        context.router.push(AboutRoute(
                            appBarTitle: 'Айып жазалар бөлүмү',
                            title: aboutFineModel[index].title,
                            description: aboutFineModel[index].description));
                      },
                      child: SizedBox(
                        width: double.infinity,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: isdark ? Colors.black : Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              aboutFineModel[index].title,
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
                  itemCount: aboutFineModel.length)),
        ],
      ),
    );
  }
}
