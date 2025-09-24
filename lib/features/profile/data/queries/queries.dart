import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:image_picker/image_picker.dart';

import 'package:test_3/core/data/data_source/remote/graphql/queries.graphql.dart';
import 'package:test_3/core/data/data_source/remote/graphql/schema.graphql.dart';
import 'package:test_3/core/data/data_source/remote/remote_data_source.dart';
import 'package:test_3/core/data/utils/constants.dart';
import 'package:test_3/features/auth/domain/enums/gender.dart';
import 'package:test_3/features/profile/domain/models/user/user_model.dart';
import 'package:test_3/features/profile/data/extensions/gender_converter.dart';
import 'package:test_3/features/profile/presentation/extensions/date_time_x.dart';

mixin ProfileQueries on RemoteDataSource {
  @override
  Future<UserModel> editProfile({
    required String email,
    required XFile? imageAvatar,
    required DateTime? birthDate,
    required String? country,
    required String? firstName,
    required String? lastName,
    required String? middleName,
    required String? phone,
    required Gender? gender,
  }) async {
    final imageUrl = imageAvatar != null
        ? await httpClient.uploadFile(imageAvatar, Constants.avatar)
        : null;
    final variables = Variables$Mutation$editProfile(
      input: Input$EditProfileRequest(
        email: email,
        birthDate: birthDate?.toApiDateString(),
        country: country,
        firstName: firstName,
        lastName: lastName,
        middleName: middleName,
        phone: phone,
        gender: gender?.toGraphQL(),
        avatarUrl: imageUrl,
      ),
    );
    final options = Options$Mutation$editProfile(
      variables: variables,
      fetchPolicy: FetchPolicy.networkOnly,
    );
    final response = await graphClient.mutate$editProfile(options);
    if (response.hasException) throw Exception(response.exception.toString());
    final data = response.parsedData;
    if (data == null) throw Exception("Empty response");
    final json = data.userEditProfile.toJson();
    final model = UserModel.fromJson(json);
    return model;
  }
}
