import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PreparationPage extends StatelessWidget {
  const PreparationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("PreparationPage"),
      ),
    );
  }
}