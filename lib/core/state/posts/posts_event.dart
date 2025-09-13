part of 'posts_bloc.dart';

@freezed
sealed class PostsEvent with _$PostsEvent {
  const factory PostsEvent.getPosts({required PostsCategory category}) =
      _PostsGetPostsEvent;
}
