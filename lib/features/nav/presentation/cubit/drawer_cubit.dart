import 'package:flutter_bloc/flutter_bloc.dart';

enum DrawerStatus { open, closed }

class DrawerCubit extends Cubit<DrawerStatus> {
  DrawerCubit() : super(DrawerStatus.closed);

  void openDrawer() => emit(DrawerStatus.open);
  void closeDrawer() => emit(DrawerStatus.closed);
  void toggle() =>
      emit(state == DrawerStatus.open ? DrawerStatus.closed : DrawerStatus.open);
}
