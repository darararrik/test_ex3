import 'package:test_3/core/data/data_source/remote/graphql/schema.graphql.dart';
import 'package:test_3/features/auth/domain/enums/gender.dart';

extension GenderX on Gender {
  Enum$GenderType toGraphQL() {
    switch (this) {
      case Gender.female:
        return Enum$GenderType.FEMALE;
      case Gender.male:
        return Enum$GenderType.MALE;
    }
  }
}
