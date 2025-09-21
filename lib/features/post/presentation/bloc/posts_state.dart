part of 'posts_bloc.dart';

@freezed
sealed class PostsState with _$PostsState {
  const factory PostsState({
    @Default(PostsCategory.my) PostsCategory category,
    @Default(false) bool hasMore, 
    @Default(false) bool isLoading,
    String? errorMessage,
    String? afterCursor,
    @Default(<PostModel>[]) List<PostModel> posts,
  }) = _PostsState;
}
