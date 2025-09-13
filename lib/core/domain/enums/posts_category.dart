import 'package:test_3/core/domain/enums/post_filter_type.dart';

enum PostsCategory { neww, top, my, favorites }

extension PostsCategoryMapper on PostsCategory {
  PostFilterType? toPostFilterType() {
    switch (this) {
      case PostsCategory.neww:
        return PostFilterType.newPosts;
      case PostsCategory.top:
        return PostFilterType.top;
      case PostsCategory.my:
      case PostsCategory.favorites:
        return null;
    }
  }
}
