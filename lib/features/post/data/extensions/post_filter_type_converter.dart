import 'package:test_3/core/data/data_source/remote/graphql/schema.graphql.dart';
import 'package:test_3/features/post/domain/enums/post_filter_type.dart';

extension PostFilterTypeX on PostFilterType {
  Enum$PostFilterType toGraphQL() {
    switch (this) {
      case PostFilterType.newPosts:
        return Enum$PostFilterType.NEW;
      case PostFilterType.topPosts:
        return Enum$PostFilterType.TOP;
    }
  }
}
