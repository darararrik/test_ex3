import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:test_3/core/presentation/constants/constants.dart';
import 'package:test_3/core/presentation/utils/utils.dart';
import 'package:test_3/core/presentation/widgets/app_icon.dart';

class NewPosts extends StatelessWidget {
  const NewPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const P(all: 0),
      itemCount: 10,
      separatorBuilder: (BuildContext context, int index) => const SizedBox(height: S.s4),
      itemBuilder: (context, index) {
        return DecoratedBox(
          decoration: BoxDecoration(color: context.color.bgSecondary),
          child: Padding(
            padding: const P(top: S.s24, bottom: S.s32, horizontal: S.s20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Apple Love", style: context.text.body2),
                    Text(
                      "11.09.22",
                      style: context.text.body6.copyWith(
                        color: context.color.textSecondary,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: S.s12),
                AspectRatio(
                  aspectRatio: 335 / 220,
                  child: CachedNetworkImage(
                    imageUrl: "https://picsum.photos/335/220",
                    imageBuilder: (context, imageProvider) => DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(R.r17),
                        image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: S.s20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(radius: S.s12),
                        const SizedBox(width: S.s8),
                        Text(
                          "Hannah K.",
                          style: context.text.caption.copyWith(
                            color: context.color.textSecondary,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const P(all: S.s4),
                          child: AppIcon(
                            AppIcons.heart,
                            width: Sz.s20,
                            color: context.color.iconSecondary,
                          ),
                        ),
                        const SizedBox(width: S.s4),
                        Text("137", style: context.text.body6),
                        const SizedBox(width: S.s12),
                        Padding(
                          padding: const P(all: S.s4),
                          child: AppIcon(
                            AppIcons.share,
                            width: Sz.s20,
                            color: context.color.iconPrimary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
