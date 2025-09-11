import 'package:test_3/core/domain/enums/gender.dart';

class UserModel {
  const UserModel({
    required this.id,
    this.email,
    this.createdAt,
    this.updatedAt,
    this.avatarUrl,
    this.birthDate,
    this.country,
    this.deletedAt,
    this.firstName,
    this.lastName,
    this.middleName,
    this.phone,
    this.gender,
  });
  final String id;
  final String? email;
  final String? avatarUrl;
  final String? birthDate;
  final String? country;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? deletedAt;
  final String? firstName;
  final String? lastName;
  final String? middleName;
  final String? phone;
  final Gender? gender;
}
