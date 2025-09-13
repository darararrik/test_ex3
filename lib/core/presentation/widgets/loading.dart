import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});
  static SliverFillRemaining sliver() =>
      const SliverFillRemaining(child: LoadingScreen());

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}
