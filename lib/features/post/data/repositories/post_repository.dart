import 'package:share_plus/share_plus.dart';

import 'package:test_3/core/data/data_source/remote/remote_data_source.dart';
import 'package:test_3/features/post/domain/enums/enums.dart';
import 'package:test_3/features/post/domain/models/post/post_model.dart';
import 'package:test_3/features/post/domain/models/post_cursor/post_cursor_model.dart';
import 'package:test_3/features/post/domain/repositories/post_repository.dart';

class PostRepositoryImpl implements IPostRepository {
  PostRepositoryImpl({required RemoteDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;

  final RemoteDataSource _remoteDataSource;

  @override
  Future<PostModel> createPost({
    required String title,
    required String description,
    required XFile file,
  }) async {
    final post = await _remoteDataSource.createPost(
      title: title,
      description: description,
      file: file,
    );
    return post;
  }

  @override
  Future<void> deletePost(String postId) => _remoteDataSource.deletePost(postId);

  @override
  Future<PostAfterCursor> getFavouritePosts({int limit = 10, String? afterCursor}) async {
    final res = (await _remoteDataSource.getFavouritePosts(limit: limit));
    final model = res;
    return model;
  }

  @override
  Future<PostAfterCursor> getMyPosts({int limit = 10, String? afterCursor}) =>
      _remoteDataSource.getMyPosts(limit: limit, afterCursor: afterCursor);
  @override
  Future<PostModel> getPostById(String postId) => _remoteDataSource.getPostById(postId);

  @override
  Future<PostAfterCursor> getPosts({
    int limit = 10,
    String? afterCursor,
    required PostFilterType type,
  }) => _remoteDataSource.getPosts(limit: limit, afterCursor: afterCursor, type: type);

  @override
  Future<PostModel> likePost(String postId) => _remoteDataSource.likePost(postId: postId);
  @override
  Future<PostModel> unlikePost(String postId) =>
      _remoteDataSource.unlikePost(postId: postId);
}
