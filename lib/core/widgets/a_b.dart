import 'package:flutter/material.dart';

import 'package:test_3/core/extensions/extensions.dart';
import 'package:test_3/core/widgets/widgets.dart';

class AB extends StatelessWidget {
  const AB({
    super.key,
    required this.title,
    this.actionsPadding,
    this.backgroundColor,
    this.actions,
    this.centerTitle = true,
    this.canPop = true,
  });
  final String title;
  final EdgeInsets? actionsPadding;
  final Color? backgroundColor;
  final List<Widget>? actions;
  final bool centerTitle;
  final bool canPop;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      actions: actions,
      centerTitle: centerTitle,
      actionsPadding: actionsPadding,
      backgroundColor: backgroundColor,
      leading: canPop ? const BB() : null,
      title: Text(title, style: context.text.headline1),
    );
  }
}
