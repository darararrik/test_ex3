import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

import 'package:test_3/core/presentation/constants/constants.dart';
import 'package:test_3/core/presentation/widgets/buttons/icon_btn.dart';

class BB extends StatelessWidget {
  const BB({super.key});

  @override
  Widget build(BuildContext context) {
    return IB(
      onPressed: () => context.pop(),
      iconPath: AppIcons.arrowLeft,
      width: Sz.s24,
      height: Sz.s24,
    );
  }
}
