import 'package:test_3/core/domain/enums/gender.dart';

class EditProfileRequest {
  const EditProfileRequest({
    this.email,
    this.avatarUrl,
    this.birthDate,
    this.country,
    this.firstName,
    this.lastName,
    this.middleName,
    this.phone,
    this.gender,
  });
  final String? email;
  final String? avatarUrl;
  final String? birthDate;
  final String? country;
  final String? firstName;
  final String? lastName;
  final String? middleName;
  final String? phone;
  final Gender? gender;
}
