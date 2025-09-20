import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/utils/utils.dart';
import 'package:test_3/core/widgets/widgets.dart';
import 'package:test_3/features/post/presentation/bloc/posts_bloc.dart';
import 'package:test_3/features/post/presentation/widgets/upload_zone.dart';

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

  final ValueNotifier<bool> _isFormValid = ValueNotifier(false);
  XFile? _pickedFile;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _postController = TextEditingController();

    _titleController.addListener(_validateForm);
    _postController.addListener(_validateForm);
  }

  void _validateForm() {
    _isFormValid.value =
        _titleController.text.trim().isNotEmpty &&
        _titleController.text.trim().length < 50 &&
        _postController.text.trim().isNotEmpty &&
        _postController.text.trim().length > 40 &&
        _pickedFile != null;
  }

  void _onFilePicked(XFile file) {
    _pickedFile = file;
    _validateForm();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _postController.dispose();
    _isFormValid.dispose();
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
                  UploadZone(onFilePicked: _onFilePicked),
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
                    valueListenable: _isFormValid,
                    builder: (context, isEnabled, child) {
                      return PrimaryButton(
                        isEnabled: isEnabled,
                        onPressed: () {
                          widget.bloc.add(
                            PostsEvent.create(
                              title: _titleController.text.trim(),
                              description: _postController.text.trim(),
                              file: _pickedFile!,
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
