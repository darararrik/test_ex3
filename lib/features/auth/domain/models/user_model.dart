import 'package:test_3/features/auth/domain/enums/gender.dart';

class UserModel {
  const UserModel({
    required this.email,
    required this.avatarUrl,
    required this.birthDate,
    required this.country,
    required this.firstName,
    required this.lastName,
    required this.middleName,
    required this.phone,
    required this.gender,
  });
  final String email;
  final String avatarUrl;
  final DateTime birthDate;
  final String country;
  final String firstName;
  final String lastName;
  final String middleName;
  final String phone;
  final Gender gender;
}
