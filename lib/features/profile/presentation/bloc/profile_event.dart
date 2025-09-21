part of 'profile_bloc.dart';

@freezed
sealed class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.getProfile() = _GetProfileEvent;
  const factory ProfileEvent.changeProfile({
    required String email,
    required XFile? imageAvatar,
    required DateTime? birthDate,
    required String? country,
    required String? firstName,
    required String? lastName,
    required String? middleName,
    required String? phone,
    required Gender? gender,
  }) = _ChangeProfileEvent;
}
