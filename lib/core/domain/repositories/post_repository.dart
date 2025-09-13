import 'package:test_3/core/domain/enums/posts_category.dart';
import 'package:test_3/core/domain/models/post_model.dart';

abstract interface class IPostRepository {
  Future<PostModel> createPost({
    required String title,
    required String description,
    required String mediaUrl,
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
    required PostsCategory catergory,
  });
}
