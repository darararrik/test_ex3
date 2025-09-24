import 'package:share_plus/share_plus.dart';
import 'package:test_3/features/post/domain/enums/post_filter_type.dart';
import 'package:test_3/features/post/domain/models/models.dart';

abstract interface class IPostRepository {
  Future<PostModel> createPost({
    required String title,
    required String description,
    required XFile file,
  });
  Future<void> deletePost(String postId);
  Future<PostModel> likePost(String postId);
  Future<PostModel> unlikePost(String postId);
  Future<PostAfterCursor> getFavouritePosts({int limit, String? afterCursor});
  Future<PostAfterCursor> getMyPosts({int limit, String? afterCursor});
  Future<PostModel> getPostById(String postId);
  Future<PostAfterCursor> getPosts({
    int limit,
    String? afterCursor,
    required PostFilterType type,
  });
}
