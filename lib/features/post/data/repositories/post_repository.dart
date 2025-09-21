import 'package:share_plus/share_plus.dart';
import 'package:test_3/core/data/data_source/remote/remote_data_source.dart';
import 'package:test_3/features/post/data/dto/post/post_dto.dart';
import 'package:test_3/features/post/data/dto/post_cursor/post_cursor_dto.dart';
import 'package:test_3/features/post/domain/enums/enums.dart';
import 'package:test_3/features/post/domain/models/post_model.dart';
import 'package:test_3/features/post/domain/models/posts_cursor_model.dart';
import 'package:test_3/features/post/domain/repositories/post_repository.dart';

class PostRepositoryImpl implements IPostRepository {
  PostRepositoryImpl({required RemoteFull remoteDataSource})
    : _remoteDataSource = remoteDataSource;

  final RemoteFull _remoteDataSource;

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
    return post.toModel();
  }

  @override
  Future<void> deletePost(String postId) => _remoteDataSource.deletePost(postId);

  @override
  Future<PostsCursorModel> getFavouritePosts({
    int limit = 10,
    String? afterCursor,
  }) async {
    final res = (await _remoteDataSource.getFavouritePosts(limit: limit));
    final model = res.toModel();
    return model;
  }

  @override
  Future<PostsCursorModel> getMyPosts({int limit = 10, String? afterCursor}) async =>
      (await _remoteDataSource.getMyPosts(
        limit: limit,
        afterCursor: afterCursor,
      )).toModel();
  @override
  Future<PostModel> getPostById(String postId) async =>
      (await _remoteDataSource.getPostById(postId)).toModel();

  @override
  Future<PostsCursorModel> getPosts({
    int limit = 10,
    String? afterCursor,
    required PostFilterType type,
  }) async {
    return (await _remoteDataSource.getPosts(
      limit: limit,
      afterCursor: afterCursor,
      type: type,
    )).toModel();
  }

  @override
  Future<PostModel> likePost(String postId) async =>
      (await _remoteDataSource.likePost(postId: postId)).toModel();
  @override
  Future<PostModel> unlikePost(String postId) async =>
      (await _remoteDataSource.unlikePost(postId: postId)).toModel();
}
