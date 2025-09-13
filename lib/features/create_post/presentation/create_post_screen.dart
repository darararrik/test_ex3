import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:test_3/lib.dart';

@RoutePage()
class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({super.key, required this.bloc});
  final PostsBloc bloc;

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  late final TextEditingController _titleController;
  late final TextEditingController _postController;
  final ValueNotifier<bool> e = ValueNotifier(false);
  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _postController = TextEditingController();

    _titleController.addListener(_validateForm);
    _postController.addListener(_validateForm);
  }

  void _validateForm() {
    e.value =
        _titleController.text.trim().isNotEmpty && _postController.text.trim().isNotEmpty;
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
          AB(title: context.l10n.createPost),
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
                  ValueListenableBuilder<bool>(
                    valueListenable: e,

                    builder: (context, isEnabled, child) {
                      return PrimaryButton(
                        isEnabled: isEnabled,
                        onPressed: () {
                          widget.bloc.add(
                            PostsEvent.create(
                              title: _titleController.text.trim(),
                              description: _postController.text.trim(),
                            ),
                          );
                          context.pop();
                        },
                        text: context.l10n.publish,
                      );
                    },
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
