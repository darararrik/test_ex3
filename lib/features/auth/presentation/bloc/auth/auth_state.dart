part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isAuthorized,
    @Default(false) bool isLoading,
    @Default(UserModel()) UserModel user,
    String? errorMessage,
  }) = _AuthState;
}
