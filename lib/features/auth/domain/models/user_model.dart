import 'package:test_3/features/auth/domain/enums/gender.dart';

class UserModel {
  const UserModel({
    this.email = "",
    this.avatarUrl = "",
    this.birthDate,
    this.country,
    this.firstName,
    this.lastName,
    this.middleName,
    this.phone,
    this.gender,
  });
  final String email;
  final String avatarUrl;
  final DateTime? birthDate;
  final String? country;
  final String? firstName;
  final String? lastName;
  final String? middleName;
  final String? phone;
  final Gender? gender;
}
