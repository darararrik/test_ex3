import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerCubit extends Cubit<GlobalKey<ScaffoldState>> {
  DrawerCubit() : super(GlobalKey<ScaffoldState>());

  void openDrawer() {
    state.currentState?.openDrawer();
  }

  void closeDrawer() {
    state.currentState?.closeDrawer();
  }
}
