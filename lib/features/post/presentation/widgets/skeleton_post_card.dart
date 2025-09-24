import 'package:flutter/material.dart';
import 'package:test_3/core/utils/utils.dart';

class SkeletonLoading extends StatefulWidget {
  const SkeletonLoading({super.key});

  @override
  State<SkeletonLoading> createState() => _SkeletonLoadingState();
}

class _SkeletonLoadingState extends State<SkeletonLoading>
    with SingleTickerProviderStateMixin {
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

  Widget _skeletonBox({double? width, double? height, double radius = 8}) {
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
            width: width,
            height: height,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(radius),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: ListView.builder(
        itemCount: 6,
        padding: const P(horizontal: 16),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _skeletonBox(width: double.infinity, height: 20), // заголовок
                const SizedBox(height: 8),
                _skeletonBox(width: 120, height: 14), // дата
                const SizedBox(height: 12),
                _skeletonBox(width: double.infinity, height: 150, radius: 12), // картинка
                const SizedBox(height: 12),
                Row(
                  children: [
                    _skeletonBox(width: 50, height: 12, radius: 6),
                    const SizedBox(width: 8),
                    _skeletonBox(width: 80, height: 12, radius: 6),
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
