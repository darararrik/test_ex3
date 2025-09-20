import 'package:share_plus/share_plus.dart';

import 'package:test_3/features/post/domain/enums/post_filter_type.dart';
import 'package:test_3/features/post/domain/models/post_model.dart';

abstract interface class IPostRepository {
  Future<PostModel> createPost({
    required String title,
    required String description,
    required XFile file,
  });
  Future<void> deletePost(String postId);
  Future<PostModel> likePost(String postId);
  Future<PostModel> unlikePost(String postId);
  Future<List<PostModel>> getFavouritePosts({int limit, String? afterCursor});
  Future<List<PostModel>> getMyPosts({int limit, String? afterCursor});
  Future<PostModel> getPostById(String postId);
  Future<List<PostModel>> getPosts({
    int limit,
    String? afterCursor,
    required PostFilterType type,
  });
}
