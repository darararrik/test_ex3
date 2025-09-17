import 'package:flutter/material.dart';

class SliverErrorScreen extends StatelessWidget {
  const SliverErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(child: Center(child: Text("error")));
  }
}
