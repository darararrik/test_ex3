import 'package:test_3/core/data/dto/create_post_request/create_post_request_dto.dart';
import 'package:test_3/core/data/dto/edit_profile_request/edit_profile_request_dto.dart';
import 'package:test_3/core/data/dto/find_posts_request/find_posts_request_dto.dart';
import 'package:test_3/core/data/dto/post/post_dto.dart';
import 'package:test_3/core/data/dto/sign_in_request/sign_in_request_dto.dart';
import 'package:test_3/core/data/dto/sign_response/sign_response.dart';
import 'package:test_3/core/data/dto/sign_up_request/sign_up_request_dto.dart';
import 'package:test_3/core/data/dto/user/user_dto.dart';
import 'package:test_3/core/domain/enums/gender.dart';
import 'package:test_3/core/domain/enums/post_filter_type.dart';

class MockRemoteDataSource {
  MockRemoteDataSource() {
    _anotherUser = UserDto(
      id: 'u2',
      email: 'jane.doe@example.com',
      firstName: 'Jane',
      lastName: 'Doe',
      avatarUrl: "https://avatar.iran.liara.run/public/girl",
      birthDate: DateTime(1995, 6, 15),
      country: 'USA',
      gender: Gender.female,
      phone: '+1987654321',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      deletedAt: null,
      middleName: null,
    );
    _currentUser = UserDto(
      id: 'u1',
      email: 'current@user.com',
      firstName: 'John',
      lastName: 'Doe',
      avatarUrl: "https://avatar.iran.liara.run/public/boy",
      birthDate: DateTime(1992, 2, 16),
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
          mediaUrl: 'https://picsum.photos/335/220',
          author: _anotherUser,
          authorId: _anotherUser.id,
          isLiked: false,
          likesCount: i + 1,
          createdAt: DateTime.now().subtract(Duration(days: i)),
          updatedAt: DateTime.now(),
          deletedAt: null,
        ),
      ),
    );
    _posts.addAll(
      List.generate(
        2,
        (i) => PostDto(
          id: 'post_${i + 6}',
          title: 'Post ${i + 6}',
          description: 'Description ${i + 6}',
          mediaUrl: 'https://picsum.photos/335/220',
          author: _currentUser,
          authorId: _currentUser.id,
          isLiked: false,
          likesCount: (i + 6),
          createdAt: DateTime.now().subtract(Duration(days: i + 6)),
          updatedAt: DateTime.now(),
          deletedAt: null,
        ),
      ),
    );
  }
  // ignore: prefer_final_fields
  List<PostDto> _posts = [];
  late UserDto _currentUser;
  late UserDto _anotherUser;

  Future<SignResponse> signUp({required SignUpRequestDto signUp}) async {
    return SignResponse(user: _currentUser, token: "mockToken").withDelay();
  }

  Future<SignResponse> signIn({required SignInRequestDto signIn}) async {
    return SignResponse(user: _currentUser, token: "mockToken").withDelay();
  }

  Future<UserDto?> getCurrentUser() async => _currentUser.withDelay();

  Future<UserDto?> editProfile(EditProfileRequestDto input) async {
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

  Future<PostDto> createPost(CreatePostRequestDto input) async {
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

  Future<List<PostDto>> getMyPosts({int limit = 10, String? afterCursor}) async {
    return _posts.where((p) => p.author == _currentUser).take(limit).toList().withDelay();
  }

  Future<PostDto> getPostById(String postId) async {
    return _posts
        .firstWhere((p) => p.id == postId, orElse: () => _posts.first)
        .withDelay();
  }

  Future<List<PostDto>> getPosts({required FindPostsRequestDto req}) async {
    List<PostDto> sorted = List.from(_posts);

    switch (req.type) {
      case PostFilterType.newPosts:
        sorted.sort((a, b) => b.createdAt.compareTo(a.createdAt)); // новые сверху
        break;
      case PostFilterType.top:
        sorted.sort((a, b) => b.likesCount.compareTo(a.likesCount)); // по лайкам сверху
        break;
    }

    return sorted.take(req.limit).toList().withDelay();
  }

  Future<List<PostDto>> getFavouritePosts({int limit = 10}) async {
    final favs = _posts.where((p) => p.isLiked == true).take(limit).toList();
    return favs.withDelay();
  }

  Future<PostDto> likePost({required String postId}) async {
    final index = _posts.indexWhere((p) => p.id == postId);
    if (index == -1) throw Exception("Post not found");

    final post = _posts[index];
    final updatedPost = post.copyWith(isLiked: true, likesCount: post.likesCount + 1);

    _posts[index] = updatedPost;

    return updatedPost.withDelay(0);
  }

  Future<PostDto> unlikePost({required String postId}) async {
    final index = _posts.indexWhere((p) => p.id == postId);
    if (index == -1) throw Exception("Post not found");

    final post = _posts[index];
    final updatedPost = post.copyWith(isLiked: false, likesCount: post.likesCount - 1);

    _posts[index] = updatedPost;

    return updatedPost.withDelay(0);
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
