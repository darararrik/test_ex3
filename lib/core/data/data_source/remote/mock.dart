import 'package:test_3/core/data/dto/post/post_dto.dart';
import 'package:test_3/core/data/dto/user/user_dto.dart';
import 'package:test_3/core/domain/enums/gender.dart';
import 'package:test_3/core/domain/enums/post_filter_type.dart';
import 'package:test_3/core/domain/models/create_post_request.dart';
import 'package:test_3/core/domain/models/edit_profile_request.dart';

class MockRemoteDataSource {
  MockRemoteDataSource() {
    _currentUser = UserDto(
      id: 'u1',
      email: 'mock@example.com',
      firstName: 'John',
      lastName: 'Doe',
      avatarUrl: null,
      birthDate: null,
      country: 'USA',
      gender: Gender.male,
      phone: '+123456789',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      deletedAt: null,
      middleName: null,
    );
    _posts.addAll(
      List.generate(
        5,
        (i) => PostDto(
          id: 'post_$i',
          title: 'Post $i',
          description: 'Description $i',
          mediaUrl: 'https://placekitten.com/200/200',
          author: _currentUser,
          authorId: _currentUser.id,
          isLiked: false,
          likesCount: i.toDouble(),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          deletedAt: null,
        ),
      ),
    );
  }
  final List<PostDto> _posts = [];
  late UserDto _currentUser;

  Future<String?> signUp({
    required String email,
    required String password,
    required String passwordConfirm,
  }) async {
    return "mock_token".withDelay();
  }

  Future<String?> login({required String email, required String password}) async {
    return "mock_token".withDelay();
  }

  Future<UserDto?> getCurrentUser() async => _currentUser.withDelay();

  Future<UserDto?> editProfile(EditProfileRequest input) async {
    _currentUser = _currentUser.copyWith(
      firstName: input.firstName ?? _currentUser.firstName,
      lastName: input.lastName ?? _currentUser.lastName,
      email: input.email ?? _currentUser.email,
      avatarUrl: input.avatarUrl ?? _currentUser.avatarUrl,
      country: input.country ?? _currentUser.country,
      gender: input.gender ?? _currentUser.gender,
      phone: input.phone ?? _currentUser.phone,
      birthDate: input.birthDate ?? _currentUser.birthDate,
      middleName: input.middleName ?? _currentUser.middleName,
    );
    return _currentUser.withDelay();
  }
  Future<PostDto?> createPost(CreatePostRequest input) async {
    final newPost = PostDto(
      id: 'post_${_posts.length}',
      title: input.title,
      description: input.description,
      mediaUrl: input.mediaUrl,
      author: _currentUser,
      authorId: _currentUser.id,
      isLiked: false,
      likesCount: 0,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      deletedAt: null,
    );
    _posts.add(newPost);
    return newPost.withDelay();
  }

  Future<bool> deletePost(String postId) async {
    _posts.removeWhere((post) => post.id == postId);
    return true.withDelay();
  }

  Future<List<PostDto>> getMyPosts({int limit = 5, String? afterCursor}) async {
    return _posts.take(limit).toList().withDelay();
  }

  Future<PostDto?> getPostById(String postId) async {
    return _posts
        .firstWhere((p) => p.id == postId, orElse: () => _posts.first)
        .withDelay();
  }

  Future<List<PostDto>> getPosts({
    int limit = 5,
    String? afterCursor,
    PostFilterType? type,
  }) async {
    return _posts.take(limit).toList().withDelay();
  }

  Future<List<PostDto>> getFavouritePosts({int limit = 5}) async {
    final favs = _posts.where((p) => p.isLiked == true).take(limit).toList();
    return favs.withDelay();
  }

  Future<PostDto?> likePost(String postId) async {
    final post = _posts.firstWhere((p) => p.id == postId);
    final newPost = post.copyWith(isLiked: true, likesCount: post.likesCount! + 1);
    return newPost.withDelay();
  }

  Future<PostDto?> unlikePost(String postId) async {
    final post = _posts.firstWhere((p) => p.id == postId);
    final newPost = post.copyWith(isLiked: false, likesCount: post.likesCount! - 1);
    return newPost.withDelay();
  }
}

extension _ListWithDelay<T> on List<T> {
  Future<List<T>> withDelay([int milliseconds = 1200]) async {
    await Future.delayed(Duration(milliseconds: milliseconds));
    return this;
  }
}

extension _ObjectWithDelay<T extends Object> on T {
  Future<T> withDelay([int milliseconds = 700]) async {
    await Future.delayed(Duration(milliseconds: milliseconds));
    return this;
  }
}
