import 'package:faker/faker.dart';
import 'package:share_plus/share_plus.dart';

import 'package:test_3/features/auth/domain/enums/gender.dart';
import 'package:test_3/features/post/data/dto/post/post_dto.dart';
import 'package:test_3/features/post/domain/enums/post_filter_type.dart';
import 'package:test_3/features/profile/data/dto/edit_profile_request/edit_profile_request_dto.dart';
import 'package:test_3/features/profile/data/dto/user/user_dto.dart';

class MockRemoteDataSource {
  MockRemoteDataSource() {
    final faker = Faker();
    _anotherUser = UserDto(
      email: 'jane.doe@example.com',
      firstName: 'Jane',
      lastName: 'Doe',
      avatarUrl: "https://avatar.iran.liara.run/public/girl",
      birthDate: faker.date.dateTime(),
      country: 'USA',
      gender: Gender.female,
      phone: '+1987654321',
      middleName: "null",
    );
    _currentUser = UserDto(
      email: 'current@user.com',
      firstName: 'John',
      lastName: 'Doe',
      avatarUrl: "https://avatar.iran.liara.run/public/boy",
      birthDate: DateTime(1992, 2, 16),
      country: 'USA',
      gender: Gender.male,
      phone: '+123456789',
      middleName: "null",
    );
    _posts.addAll(
      List.generate(
        5,
        (i) => PostDto(
          id: 'post_$i',
          title: faker.lorem.word(),
          description: faker.lorem.sentence(),
          mediaUrl: faker.image.toString(),
          author: _anotherUser,
          authorId: "1",
          isLiked: false,
          likesCount: faker.randomGenerator.integer(1000),
          createdAt: faker.date.dateTime(minYear: 2024, maxYear: 2025),
          updatedAt: faker.date.dateTime(minYear: 2024, maxYear: 2025),
          deletedAt: null,
        ),
      ),
    );
    _posts.addAll(
      List.generate(
        2,
        (i) => PostDto(
          id: 'post_${i + 6}',
          title: faker.lorem.word(),
          description: faker.lorem.sentence(),
          mediaUrl: faker.image.toString(),
          author: _currentUser,
          authorId: "2",
          isLiked: faker.randomGenerator.boolean(),
          likesCount: faker.randomGenerator.integer(1000),
          createdAt: faker.date.dateTime(minYear: 2024, maxYear: 2025),
          updatedAt: faker.date.dateTime(minYear: 2024, maxYear: 2025),
          deletedAt: null,
        ),
      ),
    );
  }
  // ignore: prefer_final_fields
  List<PostDto> _posts = [];
  late UserDto _currentUser;
  late UserDto _anotherUser;

  Future<UserDto> signUp({
    required String email,
    required String password,
    required String passwordConfirm,
  }) async {
    return UserDto(
      email: _currentUser.email,
      firstName: _currentUser.firstName,
      lastName: _currentUser.lastName,
      middleName: _currentUser.middleName,
      avatarUrl: _currentUser.avatarUrl,
      phone: _currentUser.phone,
      birthDate: _currentUser.birthDate,
      country: _currentUser.country,
      gender: _currentUser.gender,
    ).withDelay();
  }

  Future<UserDto> signIn({required String email, required String password}) async {
    return UserDto(
      email: _currentUser.email,
      firstName: _currentUser.firstName,
      lastName: _currentUser.lastName,
      middleName: _currentUser.middleName,
      avatarUrl: _currentUser.avatarUrl,
      phone: _currentUser.phone,
      birthDate: _currentUser.birthDate,
      country: _currentUser.country,
      gender: _currentUser.gender,
    ).withDelay();
  }

  Future<UserDto> getCurrentUser() async => _currentUser.withDelay();

  Future<UserDto> editProfile(EditProfileRequestDto input) async {
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

  Future<PostDto> createPost({
    required String title,
    required String description,
    required XFile file,
  }) async {
    final newPost = PostDto(
      id: 'post_${_posts.length}',
      title: title,
      description: description,
      mediaUrl: "mediaUrl",
      author: _currentUser,
      authorId: "2",
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

  Future<List<PostDto>> getPosts({
    int limit = 10,
    String? afterCursor,
    required PostFilterType type,
  }) async {
    List<PostDto> sorted = List.from(_posts);

    switch (type) {
      case PostFilterType.newPosts:
        sorted.sort((a, b) => b.createdAt.compareTo(a.createdAt)); // новые сверху
        break;
      case PostFilterType.topPosts:
        sorted.sort((a, b) => b.likesCount.compareTo(a.likesCount)); // по лайкам сверху
        break;
    }

    return sorted.take(limit).toList().withDelay();
  }

  Future<List<PostDto>> getFavouritePosts({int limit = 10, String? afterCursor}) async {
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
