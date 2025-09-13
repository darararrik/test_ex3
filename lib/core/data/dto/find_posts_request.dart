import 'package:test_3/core/domain/enums/post_filter_type.dart';

class FindPostsRequest {
  FindPostsRequest({required this.afterCursor, required this.limit, required this.type});

  final String? afterCursor;
  final int limit;
  final PostFilterType type;
}
