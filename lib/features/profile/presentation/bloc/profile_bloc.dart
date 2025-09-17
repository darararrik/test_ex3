import 'dart:async';

import 'package:flutter/foundation.dart';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:test_3/features/auth/domain/models/user_model.dart';
import 'package:test_3/features/auth/domain/repositories/user_repository.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(this._userRepository) : super(const ProfileState()) {
    on<_GetProfileEvent>(_getProfile);
    on<_ChangeProfileEvent>(_changeProfile);
  }

  final IUserRepository _userRepository;
  FutureOr<void> _getProfile(_GetProfileEvent event, Emitter<ProfileState> emit) async {
    try {
      emit(state.copyWith(isLoading: true));
      final user = await _userRepository.getUser();
      emit(state.copyWith(isLoading: false, profile: user));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  FutureOr<void> _changeProfile(
    _ChangeProfileEvent event,
    Emitter<ProfileState> emit,
  ) async {
    try {
      emit(state.copyWith(isLoading: true));
      final user = await _userRepository.userEdit(user: event.profile);
      emit(state.copyWith(isLoading: false, profile: user));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }
}
