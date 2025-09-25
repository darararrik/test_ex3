import 'package:flutter/material.dart';
import 'package:test_3/core/utils/utils.dart';

class SkeletonLoading extends StatefulWidget {
  const SkeletonLoading({super.key});

  @override
  State<SkeletonLoading> createState() => _SkeletonLoadingState();
}

class _SkeletonLoadingState extends State<SkeletonLoading> {
  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: ListView.builder(
        itemCount: 6,
        padding: const P(horizontal: 16),
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeletonBox(width: double.infinity, height: 20), // заголовок
                SizedBox(height: 8),
                SkeletonBox(width: 120, height: 14), // дата
                SizedBox(height: 12),
                SkeletonBox(width: double.infinity, height: 150, radius: 12), // картинка
                SizedBox(height: 12),
                Row(
                  children: [
                    SkeletonBox(width: 50, height: 12, radius: 6),
                    SizedBox(width: 8),
                    SkeletonBox(width: 80, height: 12, radius: 6),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class SkeletonBox extends StatefulWidget {
  const SkeletonBox({
    super.key,
    required this.width,
    required this.height,
    this.radius = 0,
  });
  final double width;
  final double height;
  final double radius;
  @override
  State<SkeletonBox> createState() => _SkeletonBoxState();
}

class _SkeletonBoxState extends State<SkeletonBox> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 1))
      ..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return ShaderMask(
          shaderCallback: (bounds) {
            return LinearGradient(
              colors: [
                Colors.grey.shade400,
                Colors.grey.shade300,
                Colors.grey.shade300,
                Colors.grey.shade400,
              ],
              stops: const [0.1, 0.15, 0.25, 0.3],
              begin: Alignment(-1 + 3 * _controller.value, -3),
              end: Alignment(1 + 3 * _controller.value, 0),
            ).createShader(bounds);
          },
          blendMode: BlendMode.srcATop,
          child: Container(
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(widget.radius),
            ),
          ),
        );
      },
    );
  }
}
