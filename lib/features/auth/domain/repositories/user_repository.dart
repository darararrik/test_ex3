import 'package:image_picker/image_picker.dart';

import 'package:test_3/features/auth/domain/enums/gender.dart';
import 'package:test_3/features/auth/domain/models/user_model.dart';

abstract interface class IUserRepository {
  Future<UserModel> getUser();
  Future<UserModel> userEdit({
    required String email,
    required XFile? imageAvatar,
    required DateTime? birthDate,
    required String? country,
    required String? firstName,
    required String? lastName,
    required String? middleName,
    required String? phone,
    required Gender? gender,
  });
}
