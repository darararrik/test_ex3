import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_3/core/presentation/constants/constants.dart';
import 'package:test_3/core/presentation/utils/utils.dart';
import 'package:test_3/core/presentation/widgets/widgets.dart';
import 'package:test_3/features/create_post/presentation/widgets/upload_zone.dart';

@RoutePage()
class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  late final TextEditingController _titleController;
  late final TextEditingController _postController;
  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _postController = TextEditingController();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _postController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: const BB(),
            actions: [IB(onPressed: context.pop, iconPath: AppIcons.xMarkSmall)],
            title: Text(context.l10n.createPost, style: context.text.headline1),
          ),
          SliverPadding(
            padding: const P(horizontal: S.s16, top: S.s28),
            sliver: SliverFillRemaining(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const UploadZone(),
                  const SizedBox(height: S.s24),
                  InputWidget(
                    controller: _titleController,
                    labelText: context.l10n.title,
                    hintText: context.l10n.enterTitle,
                  ),
                  const SizedBox(height: S.s20),
                  InputWidget(
                    controller: _postController,
                    labelText: context.l10n.post,
                    hintText: context.l10n.enterPost,
                  ),
                  const SizedBox(height: S.s52),
                  PrimaryButton(
                    isEnabled: false,
                    onPressed: () {},
                    text: context.l10n.publish,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
