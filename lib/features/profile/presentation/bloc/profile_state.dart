part of 'profile_bloc.dart';

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(true) bool isLoading,
    String? errorMessage,
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
    UserModel profile,
  }) = _ProfileState;
}
