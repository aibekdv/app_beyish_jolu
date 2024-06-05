import 'package:auto_route/auto_route.dart';
import 'package:beyish_jolu/bloc/theme_cubit.dart';
import 'package:beyish_jolu/main/presentation/widgets/sliver_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:beyish_jolu/core/routes/router.gr.dart';
import 'package:beyish_jolu/main/domain/models/preparation_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class PreparationPage extends StatelessWidget {
  const PreparationPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isdark = context.watch<ThemeCubit>().state.isdark;

    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Даярдык бөлүмү",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        backgroundColor: isdark ? Colors.black : const Color(0XFF4B7F7F),
      ),
      backgroundColor: const Color(0XffEDEDF2),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(height: 15),
          ),
          const SliverToBoxAdapter(
            child: Text(
              'Ажылык кандай аткарылат?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
          SliverContainer(
            title: preparationModel1.map((e) => e.title).toList(),
            itemCount: preparationModel1.length,
            onTap: (index) {
              context.router.push(AboutRoute(
                  appBarTitle: 'Даярдык бөлүмү',
                  title: preparationModel1[index].title,
                  description: preparationModel1[index].description));
            },
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 15),
          ),
          const SliverToBoxAdapter(
            child: Text(
              'Умра кандайча аткарылат? ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
          SliverContainer(
            title: preparationmodel2.map((e) => e.title).toList(),
            itemCount: preparationmodel2.length,
            onTap: (index) {
              context.router.push(AboutRoute(
                  appBarTitle: 'Даярдык бөлүмү',
                  title: preparationmodel2[index].title,
                  description: preparationmodel2[index].description));
            },
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 15),
          ),
          const SliverToBoxAdapter(
            child: Text(
              'Ажылык менен умрада аялдарга байланыштуу маселелер ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
          SliverContainer(
            title: preparationmodel3.map((e) => e.title).toList(),
            itemCount: preparationmodel3.length,
            onTap: (index) {
              context.router.push(AboutRoute(
                  appBarTitle: 'Даярдык бөлүмү',
                  title: preparationmodel3[index].title,
                  description: preparationmodel3[index].description));
            },
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 15),
          ),
          const SliverToBoxAdapter(
            child: Text(
              'Умра жана Ажылык учурундагы тыйуулар',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 15),
          ),
          SliverContainer(
            title: preparationmodel4.map((e) => e.title).toList(),
            itemCount: preparationmodel4.length,
            onTap: (index) {
              context.router.push(AboutRoute(
                  appBarTitle: 'Даярдык бөлүмү',
                  title: preparationmodel4[index].title,
                  description: preparationmodel4[index].description));
            },
          ),
        ],
      ),
    );
  }
}
