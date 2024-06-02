import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FinePage extends StatelessWidget {
  const FinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("finePage"),
      ),
    );
  }
}
