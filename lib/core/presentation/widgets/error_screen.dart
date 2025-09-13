import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});
  static SliverFillRemaining sliver() => const SliverFillRemaining(child: ErrorScreen());

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("error"));
  }
}
