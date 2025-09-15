part of 'profile_bloc.dart';

@freezed
sealed class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getProfile() = _GetProfileEvent;
  const factory ProfileEvent.changeProfile({required UserModel profile}) = _ChangeProfileEvent;
}