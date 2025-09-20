import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:test_3/core/data/data_source/remote/graphql/queries.graphql.dart';
import 'package:test_3/core/data/data_source/remote/graphql/schema.graphql.dart';
import 'package:test_3/core/data/data_source/remote/remote_data_source.dart';
import 'package:test_3/core/data/utils/constants.dart';
import 'package:test_3/features/post/data/extensions/post_filter_type_converter.dart';
import 'package:test_3/features/post/post.dart';

mixin PostQueries on RemoteDataSource {
  @override
  Future<List<PostDto>> getFavouritePosts({int limit = 10, String? afterCursor}) async {
    final variables = Variables$Query$getFavPosts(
      input: Input$FindFavouritePostsRequest(limit: limit, afterCursor: afterCursor),
    );
    final options = Options$Query$getFavPosts(
      variables: variables,
      fetchPolicy: FetchPolicy.networkOnly,
    );
    final response = await graphClient.query$getFavPosts(options);

    if (response.hasException) throw Exception(response.exception.toString());

    final data = response.parsedData;
    if (data == null) throw Exception("Empty response");
    return _handlePosts(data.favouritePosts);
  }

  @override
  Future<List<PostDto>> getPosts({
    int limit = 10,
    String? afterCursor,
    required PostFilterType type,
  }) async {
    final variables = Variables$Query$getPosts(
      input: Input$FindPostsRequest(
        limit: limit,
        afterCursor: afterCursor,
        type: type.toGraphQL(),
      ),
    );
    final options = Options$Query$getPosts(
      variables: variables,
      fetchPolicy: FetchPolicy.networkOnly,
    );
    final response = await graphClient.query$getPosts(options);

    if (response.hasException) throw Exception(response.exception.toString());

    final data = response.parsedData;
    if (data == null) throw Exception("Empty response");
    return _handlePosts(data.posts);
  }

  @override
  Future<List<PostDto>> getMyPosts({int limit = 10, String? afterCursor}) async {
    final variables = Variables$Query$getMyPosts(
      input: Input$FindMyPostsRequest(limit: limit, afterCursor: afterCursor),
    );
    final options = Options$Query$getMyPosts(
      variables: variables,
      fetchPolicy: FetchPolicy.networkOnly,
    );
    final response = await graphClient.query$getMyPosts(options);

    if (response.hasException) throw Exception(response.exception.toString());
    final data = response.parsedData;
    if (data == null) throw Exception("Empty response");
    return _handlePosts(data.myPosts);
  }

  @override
  Future<PostDto> likePost({required String postId}) async {
    final variables = Variables$Mutation$postLike(input: Input$PostIdRequest(id: postId));
    final options = Options$Mutation$postLike(
      variables: variables,
      fetchPolicy: FetchPolicy.networkOnly,
    );
    final response = await graphClient.mutate$postLike(options);
    if (response.hasException) throw Exception(response.exception.toString());
    final data = response.parsedData;
    if (data == null) throw Exception("Empty response");
    final json = data.postLike.toJson();
    final dto = PostDto.fromJson(json);
    return dto;
  }

  @override
  Future<PostDto> unlikePost({required String postId}) async {
    final variables = Variables$Mutation$postUnlike(
      input: Input$PostIdRequest(id: postId),
    );
    final options = Options$Mutation$postUnlike(
      variables: variables,
      fetchPolicy: FetchPolicy.networkOnly,
    );
    final response = await graphClient.mutate$postUnlike(options);
    if (response.hasException) throw Exception(response.exception.toString());
    final data = response.parsedData;
    if (data == null) throw Exception("Empty response");
    final json = data.postUnlike.toJson();
    final dto = PostDto.fromJson(json);
    return dto;
  }

  @override
  Future<PostDto> createPost({
    required String title,
    required String description,
    required XFile file,
  }) async {
    final String imageUrl = await httpClient.uploadFile(file, Constants.posts);
    final variables = Variables$Mutation$postCreate(
      input: Input$CreatePostRequest(
        description: description,
        mediaUrl: imageUrl,
        title: title,
      ),
    );
    final options = Options$Mutation$postCreate(
      variables: variables,
      fetchPolicy: FetchPolicy.networkOnly,
    );
    final response = await graphClient.mutate$postCreate(options);
    if (response.hasException) throw Exception(response.exception.toString());
    final data = response.parsedData;
    if (data == null) throw Exception("Empty response");
    final json = data.postCreate.toJson();
    final dto = PostDto.fromJson(json);
    return dto;
  }

  @override
  Future<bool> deletePost(String postId) async {
    final variables = Variables$Mutation$postDelete(
      input: Input$PostIdRequest(id: postId),
    );
    final options = Options$Mutation$postDelete(
      variables: variables,
      fetchPolicy: FetchPolicy.networkOnly,
    );
    final response = await graphClient.mutate$postDelete(options);
    if (response.hasException) throw Exception(response.exception.toString());
    final data = response.parsedData;
    if (data == null) throw Exception("Empty response");
    return true;
  }

  List<PostDto> _handlePosts(dynamic posts) {
    final json = posts.toJson();
    final listRawPosts = json['data'] as List<dynamic>;
    final dto = listRawPosts
        .map((item) => PostDto.fromJson(item as Map<String, dynamic>))
        .toList();
    return dto;
  }
}
