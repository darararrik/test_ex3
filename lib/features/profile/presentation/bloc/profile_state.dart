part of 'profile_bloc.dart';

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(true) bool isLoading,
    String? errorMessage,
    @Default(UserModel()) UserModel profile,
  }) = _ProfileState;
}
