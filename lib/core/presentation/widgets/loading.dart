import 'package:flutter/material.dart';

class SliverLoadingScreen extends StatelessWidget {
  const SliverLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(child: Center(child: CircularProgressIndicator()));
  }
}
