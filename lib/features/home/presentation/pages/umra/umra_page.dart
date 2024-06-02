import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UmraPage extends StatelessWidget {
  const UmraPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Umra"),
      ),
    );
  }
}