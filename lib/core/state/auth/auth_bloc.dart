import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:test_3/core/domain/repositories/auth_repository.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authRepository) : super(const AuthState()) {
    on<_AuthCheckStatusEvent>(_onCheckStatus);
    on<_AuthLoginEvent>(_onLogin);
    on<_AuthLogoutEvent>(_onLogout);
    on<_AuthRegisterEvent>(_onRegister);
  }
  final IAuthRepository _authRepository;

  FutureOr<void> _onCheckStatus(
    _AuthCheckStatusEvent event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(state.copyWith(isLoading: true));
      final status = await _authRepository.checkAuth();
      emit(state.copyWith(isAuthorized: status, isLoading: false));
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString()));
    }
  }

  FutureOr<void> _onLogin(_AuthLoginEvent event, Emitter<AuthState> emit) async {
    try {
      emit(state.copyWith(isLoading: true));
      final status = await _authRepository.signIn(
        email: event.email,
        password: event.password,
      );
      emit(state.copyWith(isAuthorized: status, isLoading: false));
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString(), isLoading: false));
    }
  }

  FutureOr<void> _onLogout(_AuthLogoutEvent event, Emitter<AuthState> emit) async {
    try {
      emit(state.copyWith(isLoading: true));
      final status = await _authRepository.checkAuth();
      emit(state.copyWith(isAuthorized: status, isLoading: false));
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString(), isLoading: false));
    }
  }

  FutureOr<void> _onRegister(_AuthRegisterEvent event, Emitter<AuthState> emit) async {
    try {
      emit(state.copyWith(isLoading: true));
      final status = await _authRepository.signUp(
        email: event.email,
        password: event.password,
        passwordConfirm: event.passwordConfirm,
      );
      emit(state.copyWith(isAuthorized: status, isLoading: false));
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString(), isLoading: false));
    }
  }
}
