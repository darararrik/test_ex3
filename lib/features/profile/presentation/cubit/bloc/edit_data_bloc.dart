import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:share_plus/share_plus.dart';
import 'package:test_3/features/auth/domain/enums/gender.dart';

part 'edit_data_bloc.freezed.dart';
part 'edit_data_event.dart';
part 'edit_data_state.dart';

class EditDataBloc extends Bloc<EditDataEvent, EditDataState> {
  EditDataBloc() : super(const EditDataState()) {
    on<_EditEvent>(_onEdit);
  }

  FutureOr<void> _onEdit(_EditEvent event, Emitter<EditDataState> emit) {
    emit(
      state.copyWith(
        bDay: event.bDay,
        gender: event.gender,
        imageAvatar: event.imageAvatar,
      ),
    );
  }
}
