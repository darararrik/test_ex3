part of 'profile_bloc.dart';

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(false) bool isLoading,
    String? errorMessage,
    @Default(null) UserModel? profile,
  }) = _ProfileState;
}
