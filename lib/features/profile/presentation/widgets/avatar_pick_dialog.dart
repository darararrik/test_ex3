import 'package:flutter/cupertino.dart';

import 'package:auto_route/auto_route.dart';
import 'package:image_picker/image_picker.dart';

import 'package:test_3/core/constants/s.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/utils/utils.dart';

class AvatarPickDialog extends StatefulWidget {
  const AvatarPickDialog({super.key, required this.onFilePicked});
  final Function(XFile image) onFilePicked;
  @override
  State<AvatarPickDialog> createState() => _AvatarPickDialogState();
}

class _AvatarPickDialogState extends State<AvatarPickDialog> {
  late final ImagePicker picker;
  @override
  void initState() {
    super.initState();
    picker = ImagePicker();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const P(horizontal: S.s16),
      child: CupertinoActionSheet(
        cancelButton: CupertinoActionSheetAction(
          onPressed: () => context.pop(),
          child: Text(context.l10n.cancel, style: context.text.body2),
        ),
        actions: [
          CupertinoActionSheetAction(
            onPressed: () async {
              final pickedImage = await picker.pickImage(source: ImageSource.camera);
              if (pickedImage != null) {
                widget.onFilePicked(pickedImage); // теперь безопасно
              }
              if (context.mounted) context.pop();
            },
            child: Text(
              context.l10n.takePhoto,
              style: context.text.body2.copyWith(color: context.color.textAccent),
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () async {
              final pickedImage = await picker.pickImage(source: ImageSource.gallery);
              if (pickedImage != null) {
                widget.onFilePicked(pickedImage);
              }
              if (context.mounted) context.pop();
            },
            child: Text(
              context.l10n.choseFromLibray,
              style: context.text.body2.copyWith(color: context.color.textAccent),
            ),
          ),
          CupertinoActionSheetAction(
            isDestructiveAction: true,
            onPressed: () {},
            child: Text(
              context.l10n.deletePhoto,
              style: context.text.body2.copyWith(color: context.color.textNegative),
            ),
          ),
        ],
      ),
    );
  }
}
