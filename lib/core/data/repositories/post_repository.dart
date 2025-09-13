import 'package:test_3/core/data/data_source/remote/remote.dart';
import 'package:test_3/core/data/dto/create_post_request/create_post_request_dto.dart';
import 'package:test_3/core/data/dto/find_posts_request/find_posts_request_dto.dart';
import 'package:test_3/core/data/dto/post/post_dto.dart';
import 'package:test_3/core/domain/enums/posts_category.dart';
import 'package:test_3/core/domain/models/post_model.dart';
import 'package:test_3/core/domain/repositories/post_repository.dart';

class PostRepositoryImpl implements IPostRepository {
  PostRepositoryImpl({required RemoteDataSource remoteDataSource})
    : _remoteDataSource = remoteDataSource;

  final RemoteDataSource _remoteDataSource;

  @override
  Future<PostModel> createPost({
    required String title,
    required String description,
    required String mediaUrl,
  }) async {
    final req = CreatePostRequestDto(
      title: title,
      mediaUrl: mediaUrl,
      description: description,
    );
    final post = await _remoteDataSource.createPost(req);
    return post.toModel();
  }

  @override
  Future<void> deletePost(String postId) => _remoteDataSource.deletePost(postId);

  @override
  Future<List<PostModel>> getFavouritePosts({
    int limit = 10,
    String? afterCursor,
  }) async => (await _remoteDataSource.getFavouritePosts(
    limit: limit,
  )).map((e) => e.toModel()).toList();

  @override
  Future<List<PostModel>> getMyPosts({int limit = 10, String? afterCursor}) async =>
      (await _remoteDataSource.getMyPosts(
        limit: limit,
        afterCursor: afterCursor,
      )).map((e) => e.toModel()).toList();
  @override
  Future<PostModel> getPostById(String postId) async =>
      (await _remoteDataSource.getPostById(postId)).toModel();

  @override
  Future<List<PostModel>> getPosts({
    int limit = 10,
    String? afterCursor,
    required PostsCategory catergory,
  }) async {
    final postsRequest = FindPostsRequestDto(
      afterCursor: afterCursor,
      limit: limit,
      type: catergory.toPostFilterType()!,
    );
    return (await _remoteDataSource.getPosts(
      req: postsRequest,
    )).map((e) => e.toModel()).toList();
  }

  @override
  Future<PostModel> likePost(String postId) async =>
      (await _remoteDataSource.likePost(postId: postId)).toModel();
  @override
  Future<PostModel> unlikePost(String postId) async =>
      (await _remoteDataSource.unlikePost(postId: postId)).toModel();
}
