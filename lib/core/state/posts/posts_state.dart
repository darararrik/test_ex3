part of 'posts_bloc.dart';

@freezed
sealed class PostsState with _$PostsState {
  const factory PostsState({
    @Default(PostsCategory.my) PostsCategory category,
    @Default(false) bool isLoading,
    String? errorMessage,
    @Default(<PostModel>[]) List<PostModel> posts,
  }) = _PostsState;
}
