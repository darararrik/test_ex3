import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:test_3/core/constants/constants.dart';
import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/utils/p.dart';
import 'package:test_3/core/widgets/widgets.dart';

class UploadZone extends StatefulWidget {
  const UploadZone({super.key, required this.onFilePicked});

  final Function(XFile file) onFilePicked;

  @override
  State<UploadZone> createState() => _UploadZoneState();
}

class _UploadZoneState extends State<UploadZone> {
  late final ImagePicker picker;
  final ValueNotifier<XFile?> _selectedFile = ValueNotifier<XFile?>(null);

  @override
  void initState() {
    super.initState();
    picker = ImagePicker();
  }

  Future<void> _pickImage() async {
    final file = await picker.pickImage(source: ImageSource.gallery);
    if (file != null) {
      _selectedFile.value = file;
      widget.onFilePicked(file); 
    }
  }

  @override
  void dispose() {
    _selectedFile.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _pickImage,
      child: ValueListenableBuilder<XFile?>(
        valueListenable: _selectedFile,
        builder: (context, file, _) {
          final content = DecoratedBox(
            decoration: BoxDecoration(
              color: context.color.bgSecondary,
              borderRadius: BorderRadius.circular(R.r24),
              image: file != null
                  ? DecorationImage(image: FileImage(File(file.path)), fit: BoxFit.cover)
                  : null,
            ),
            child: SizedBox(
              width: double.infinity,
              height: Sz.s166,
              child: Visibility(
                visible: file == null,
                child: Padding(
                  padding: const P(top: S.s44),
                  child: Column(
                    children: [
                      AppIcon(
                        AppIcons.cloudArrowUp,
                        color: context.color.iconAccent,
                        height: Sz.s36,
                      ),
                      Text(context.l10n.uploadPhoto, style: context.text.body3),
                    ].separated(const SizedBox(height: S.s8)),
                  ),
                ),
              ),
            ),
          );
          return file == null
              ? DottedBorder(
                  options: RoundedRectDottedBorderOptions(
                    dashPattern: [S.s10, S.s10],
                    padding: const P(all: S.s1),
                    strokeWidth: Sz.s1_5,
                    radius: const Radius.circular(R.r24),
                    color: context.color.borderDefault,
                  ),
                  child: content,
                )
              : content;
        },
      ),
    );
  }
}
