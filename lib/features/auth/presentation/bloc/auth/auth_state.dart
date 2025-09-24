part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState({
    @Default(false) bool isAuthorized,
    @Default(false) bool isLoading,
    @Default(
      UserModel(
        email: '',
        firstName: null,
        lastName: null,
        middleName: null,
        phone: null,
        birthDate: null,
        country: null,
        gender: null,
      ),
    )
    UserModel user,
    String? errorMessage,
  }) = _AuthState;
}
