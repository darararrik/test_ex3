part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuthStatus() = _AuthCheckStatusEvent;
  const factory AuthEvent.login({required String email, required String password}) =
      _AuthLoginEvent;
  const factory AuthEvent.register({
    required String email,
    required String password,
    required String passwordConfirm,
  }) = _AuthRegisterEvent;
  const factory AuthEvent.logout() = _AuthLogoutEvent;
}
